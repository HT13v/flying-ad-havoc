
import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.AdhocHost;
import inet.physicallayer.wireless.ieee80211.packetlevel.Ieee80211ScalarRadioMedium;
import inet.visualizer.common.IntegratedVisualizer;

network SimpleFANET
{
    parameters:
        int numDrones = default(5);  // Number of UAVs in the network
    submodules:
        configurator: Ipv4NetworkConfigurator {
            @display("p=100,100");
        }
        radioMedium: Ieee80211ScalarRadioMedium {
            @display("p=100,200");
        }
        visualizer: IntegratedVisualizer {
            @display("p=100,300");
        }
        drone[numDrones]: AdhocHost {
            @display("i=block/circle");
        }
}
