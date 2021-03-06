/******************************************************************************
 * Spine Runtimes License Agreement
 * Last updated May 1, 2019. Replaces all prior versions.
 *
 * Copyright (c) 2013-2019, Esoteric Software LLC
 *
 * Integration of the Spine Runtimes into software or otherwise creating
 * derivative works of the Spine Runtimes is permitted under the terms and
 * conditions of Section 2 of the Spine Editor License Agreement:
 * http://esotericsoftware.com/spine-editor-license
 *
 * Otherwise, it is permitted to integrate the Spine Runtimes into software
 * or otherwise create derivative works of the Spine Runtimes (collectively,
 * "Products"), provided that each user of the Products must obtain their own
 * Spine Editor license and redistribution of the Products in any form must
 * include this license and copyright notice.
 *
 * THIS SOFTWARE IS PROVIDED BY ESOTERIC SOFTWARE LLC "AS IS" AND ANY EXPRESS
 * OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
 * OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN
 * NO EVENT SHALL ESOTERIC SOFTWARE LLC BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES, BUSINESS
 * INTERRUPTION, OR LOSS OF USE, DATA, OR PROFITS) HOWEVER CAUSED AND ON ANY
 * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *****************************************************************************/

package spine;

import spine.support.utils.Array;

/** Stores the setup pose for an {@link IkConstraint}.
 * <p>
 * See <a href="http://esotericsoftware.com/spine-ik-constraints">IK constraints</a> in the Spine User Guide. */
class IkConstraintData extends ConstraintData {
    public var bones:Array<BoneData> = new Array();
    public var target:BoneData;
    public var bendDirection:Int = 1;
    public var compress:Bool = false; public var stretch:Bool = false; public var uniform:Bool = false;
    public var mix:Float = 1; public var softness:Float = 0;

    public function new(name:String) {
        super(name);
    }

    /** The bones that are constrained by this IK constraint. */
    #if !spine_no_inline inline #end public function getBones():Array<BoneData> {
        return bones;
    }

    /** The bone that is the IK target. */
    #if !spine_no_inline inline #end public function getTarget():BoneData {
        return target;
    }

    #if !spine_no_inline inline #end public function setTarget(target:BoneData):Void {
        if (target == null) throw new IllegalArgumentException("target cannot be null.");
        this.target = target;
    }

    /** A percentage (0-1) that controls the mix between the constrained and unconstrained rotations. */
    #if !spine_no_inline inline #end public function getMix():Float {
        return mix;
    }

    #if !spine_no_inline inline #end public function setMix(mix:Float):Void {
        this.mix = mix;
    }

    /** For two bone IK, the distance from the maximum reach of the bones that rotation will slow. */
    #if !spine_no_inline inline #end public function getSoftness():Float {
        return softness;
    }

    #if !spine_no_inline inline #end public function setSoftness(softness:Float):Void {
        this.softness = softness;
    }

    /** Controls the bend direction of the IK bones, either 1 or -1. */
    #if !spine_no_inline inline #end public function getBendDirection():Int {
        return bendDirection;
    }

    #if !spine_no_inline inline #end public function setBendDirection(bendDirection:Int):Void {
        this.bendDirection = bendDirection;
    }

    /** When true and only a single bone is being constrained, if the target is too close, the bone is scaled to reach it. */
    #if !spine_no_inline inline #end public function getCompress():Bool {
        return compress;
    }

    #if !spine_no_inline inline #end public function setCompress(compress:Bool):Void {
        this.compress = compress;
    }

    /** When true, if the target is out of range, the parent bone is scaled to reach it. If more than one bone is being constrained
     * and the parent bone has local nonuniform scale, stretch is not applied. */
    #if !spine_no_inline inline #end public function getStretch():Bool {
        return stretch;
    }

    #if !spine_no_inline inline #end public function setStretch(stretch:Bool):Void {
        this.stretch = stretch;
    }

    /** When true, only a single bone is being constrained, and {@link #getCompress()} or {@link #getStretch()} is used, the bone
     * is scaled on both the X and Y axes. */
    #if !spine_no_inline inline #end public function getUniform():Bool {
        return uniform;
    }

    #if !spine_no_inline inline #end public function setUniform(uniform:Bool):Void {
        this.uniform = uniform;
    }
}
