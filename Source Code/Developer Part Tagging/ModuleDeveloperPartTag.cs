using System;
using System.Text.RegularExpressions;
using UnityEngine;


// this is a very simple plugin to allow developers of kOS scripts to add part tags to a specific part using module manager
// I do wish to create a version of this based on "stages" and "stage components" to assist developers of other scripts (hello PEGAS users! and the like)
// for now however 
namespace dPartTagging
{
    public class ModuleDeveloperPartTag : PartModule // a mouthful, i know but i am very uncreative with names
    {
        private const string PAWgn = "scriptDeveloperTagAssistant";
        private const string PAWdn = "kOS Developer Set Part tag";
        [KSPField(guiName = "Developer Tag", guiActive = true, guiActiveEditor = true, groupDisplayName = PAWdn, groupName = PAWgn), UI_Label(controlEnabled = true)]
        public string PartTag;
    }
}
