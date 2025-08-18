Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id E8A60B2A1FD
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 Aug 2025 14:46:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9CA28450B5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 Aug 2025 12:46:12 +0000 (UTC)
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.223.130])
	by lists.linaro.org (Postfix) with ESMTPS id 2B7BA3F709
	for <linaro-mm-sig@lists.linaro.org>; Mon, 18 Aug 2025 12:46:05 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=iUEsdV2+;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=AqAnuQfh;
	dkim=pass header.d=suse.de header.s=susede2_rsa header.b=iUEsdV2+;
	dkim=pass header.d=suse.de header.s=susede2_ed25519 header.b=AqAnuQfh;
	spf=pass (lists.linaro.org: domain of tzimmermann@suse.de designates 195.135.223.130 as permitted sender) smtp.mailfrom=tzimmermann@suse.de;
	dmarc=pass (policy=none) header.from=suse.de
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id 22C0621202;
	Mon, 18 Aug 2025 12:46:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1755521164; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=ZyTaJV4H2K1FdAE1ksZTx4V5FzCI7Mttwmp8s0NSmLE=;
	b=iUEsdV2+ChkIQA0SzYMWcyWMjcps0SL7S5CegkYTFeWgU8nZVoFh9W5kNXBisO+YQ9B1eX
	mSTFCsR7H0E8rxOGqmrkDZbEiRyoGHqzlshEAwiReKVkQL3OognDAtkhV6od2SwnIh9kTM
	RvmiKxd+9KYdyO0Jdl9Bo5Q7aCSpI3w=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1755521164;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=ZyTaJV4H2K1FdAE1ksZTx4V5FzCI7Mttwmp8s0NSmLE=;
	b=AqAnuQfhuvpzjyQvAwc3VRdBGhUaakPMmd2PVcmZKNNB3Xjhx26usfLdsaNmdSCGZxLulZ
	UTYUhIeQsE3kXRBQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1755521164; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=ZyTaJV4H2K1FdAE1ksZTx4V5FzCI7Mttwmp8s0NSmLE=;
	b=iUEsdV2+ChkIQA0SzYMWcyWMjcps0SL7S5CegkYTFeWgU8nZVoFh9W5kNXBisO+YQ9B1eX
	mSTFCsR7H0E8rxOGqmrkDZbEiRyoGHqzlshEAwiReKVkQL3OognDAtkhV6od2SwnIh9kTM
	RvmiKxd+9KYdyO0Jdl9Bo5Q7aCSpI3w=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1755521164;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=ZyTaJV4H2K1FdAE1ksZTx4V5FzCI7Mttwmp8s0NSmLE=;
	b=AqAnuQfhuvpzjyQvAwc3VRdBGhUaakPMmd2PVcmZKNNB3Xjhx26usfLdsaNmdSCGZxLulZ
	UTYUhIeQsE3kXRBQ==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id BFE8C13686;
	Mon, 18 Aug 2025 12:46:03 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id prFpLYsgo2iqeQAAD6G6ig
	(envelope-from <tzimmermann@suse.de>); Mon, 18 Aug 2025 12:46:03 +0000
Message-ID: <7c2d8894-7eb5-4c86-a80a-935fcf24ef83@suse.de>
Date: Mon, 18 Aug 2025 14:46:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 sumit.semwal@linaro.org, oushixiong@kylinos.cn, alexander.deucher@amd.com,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org, airlied@gmail.com,
 simona@ffwll.ch
References: <20250818084148.212443-1-tzimmermann@suse.de>
 <6f409954-2e01-4e87-b8b7-5688bea837f6@amd.com>
Content-Language: en-US
From: Thomas Zimmermann <tzimmermann@suse.de>
Autocrypt: addr=tzimmermann@suse.de; keydata=
 xsBNBFs50uABCADEHPidWt974CaxBVbrIBwqcq/WURinJ3+2WlIrKWspiP83vfZKaXhFYsdg
 XH47fDVbPPj+d6tQrw5lPQCyqjwrCPYnq3WlIBnGPJ4/jreTL6V+qfKRDlGLWFjZcsrPJGE0
 BeB5BbqP5erN1qylK9i3gPoQjXGhpBpQYwRrEyQyjuvk+Ev0K1Jc5tVDeJAuau3TGNgah4Yc
 hdHm3bkPjz9EErV85RwvImQ1dptvx6s7xzwXTgGAsaYZsL8WCwDaTuqFa1d1jjlaxg6+tZsB
 9GluwvIhSezPgnEmimZDkGnZRRSFiGP8yjqTjjWuf0bSj5rUnTGiyLyRZRNGcXmu6hjlABEB
 AAHNJ1Rob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPsLAjgQTAQgAOAIb
 AwULCQgHAgYVCgkICwIEFgIDAQIeAQIXgBYhBHIX+6yM6c9jRKFo5WgNwR1TC3ojBQJftODH
 AAoJEGgNwR1TC3ojx1wH/0hKGWugiqDgLNXLRD/4TfHBEKmxIrmfu9Z5t7vwUKfwhFL6hqvo
 lXPJJKQpQ2z8+X2vZm/slsLn7J1yjrOsoJhKABDi+3QWWSGkaGwRJAdPVVyJMfJRNNNIKwVb
 U6B1BkX2XDKDGffF4TxlOpSQzdtNI/9gleOoUA8+jy8knnDYzjBNOZqLG2FuTdicBXblz0Mf
 vg41gd9kCwYXDnD91rJU8tzylXv03E75NCaTxTM+FBXPmsAVYQ4GYhhgFt8S2UWMoaaABLDe
 7l5FdnLdDEcbmd8uLU2CaG4W2cLrUaI4jz2XbkcPQkqTQ3EB67hYkjiEE6Zy3ggOitiQGcqp
 j//OwE0EWznS4AEIAMYmP4M/V+T5RY5at/g7rUdNsLhWv1APYrh9RQefODYHrNRHUE9eosYb
 T6XMryR9hT8XlGOYRwKWwiQBoWSDiTMo/Xi29jUnn4BXfI2px2DTXwc22LKtLAgTRjP+qbU6
 3Y0xnQN29UGDbYgyyK51DW3H0If2a3JNsheAAK+Xc9baj0LGIc8T9uiEWHBnCH+RdhgATnWW
 GKdDegUR5BkDfDg5O/FISymJBHx2Dyoklv5g4BzkgqTqwmaYzsl8UxZKvbaxq0zbehDda8lv
 hFXodNFMAgTLJlLuDYOGLK2AwbrS3Sp0AEbkpdJBb44qVlGm5bApZouHeJ/+n+7r12+lqdsA
 EQEAAcLAdgQYAQgAIAIbDBYhBHIX+6yM6c9jRKFo5WgNwR1TC3ojBQJftOH6AAoJEGgNwR1T
 C3ojVSkIALpAPkIJPQoURPb1VWjh34l0HlglmYHvZszJWTXYwavHR8+k6Baa6H7ufXNQtThR
 yIxJrQLW6rV5lm7TjhffEhxVCn37+cg0zZ3j7zIsSS0rx/aMwi6VhFJA5hfn3T0TtrijKP4A
 SAQO9xD1Zk9/61JWk8OysuIh7MXkl0fxbRKWE93XeQBhIJHQfnc+YBLprdnxR446Sh8Wn/2D
 Ya8cavuWf2zrB6cZurs048xe0UbSW5AOSo4V9M0jzYI4nZqTmPxYyXbm30Kvmz0rYVRaitYJ
 4kyYYMhuULvrJDMjZRvaNe52tkKAvMevcGdt38H4KSVXAylqyQOW5zvPc4/sq9c=
In-Reply-To: <6f409954-2e01-4e87-b8b7-5688bea837f6@amd.com>
X-Spam-Level: 
X-Spam-Flag: NO
X-Spam-Score: -4.30
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2B7BA3F709
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[suse.de,none];
	R_SPF_ALLOW(-0.20)[+ip4:195.135.223.130/32];
	R_DKIM_ALLOW(-0.20)[suse.de:s=susede2_rsa,suse.de:s=susede2_ed25519];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	ASN(0.00)[asn:29298, ipnet:195.135.223.0/24, country:DE];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_TO(0.00)[amd.com,linaro.org,kylinos.cn,linux.intel.com,kernel.org,gmail.com,ffwll.ch];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DNSWL_BLOCKED(0.00)[195.135.223.130:from,2a07:de40:b281:106:10:150:64:167:received];
	DKIM_TRACE(0.00)[suse.de:+]
Message-ID-Hash: CWHIBPS3WR44BTFRSS5T3GXCDY5IK72O
X-Message-ID-Hash: CWHIBPS3WR44BTFRSS5T3GXCDY5IK72O
X-MailFrom: tzimmermann@suse.de
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/amdgpu: Pin buffer while vmap'ing exported dma-buf objects
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/CWHIBPS3WR44BTFRSS5T3GXCDY5IK72O/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGkNCg0KQW0gMTguMDguMjUgdW0gMTQ6NDAgc2NocmllYiBDaHJpc3RpYW4gS8O2bmlnOg0KWy4u
Ll0NCj4+ICtzdGF0aWMgaW50IGFtZGdwdV9kbWFfYnVmX3ZtYXAoc3RydWN0IGRtYV9idWYgKmRt
YV9idWYsIHN0cnVjdCBpb3N5c19tYXAgKm1hcCkNCj4+ICt7DQo+PiArCXN0cnVjdCBkcm1fZ2Vt
X29iamVjdCAqb2JqID0gZG1hX2J1Zi0+cHJpdjsNCj4+ICsJc3RydWN0IGFtZGdwdV9ibyAqYm8g
PSBnZW1fdG9fYW1kZ3B1X2JvKG9iaik7DQo+PiArCWludCByZXQ7DQo+PiArDQo+PiArCS8qDQo+
PiArCSAqIFBpbiB0byBrZWVwIGJ1ZmZlciBpbiBwbGFjZSB3aGlsZSBpdCdzIHZtYXAnZWQuIFRo
ZSBhY3R1YWwNCj4+ICsJICogbG9jYXRpb24gaXMgbm90IGltcG9ydGFudCBhcyBsb25nIGFzIGl0
J3MgbWFwYWJsZS4NCj4gWWVhaCwgZXhhY3RseSB0aGF0IHdvbid0IHdvcmsgaGVyZS4gTW9zdCBv
ZiB0aGUgbG9jYXRpb25zIGFyZSBub3QgQ1BVIGFjY2Vzc2libGUuDQo+DQo+IFlvdSBjb3VsZCB1
c2UgQU1ER1BVX0dFTV9ET01BSU5fR1RULCB0aGF0IHNob3VsZCBtb3N0IGxpa2VseSB3b3JrIGlu
IGFsbCBjYXNlcyBidXQgaXNuJ3QgbmVjZXNzYXJpbHkgdGhlIG1vc3Qgb3B0aW1hbCBzb2x1dGlv
bi4NCg0KTm8gcHJvYmxlbSBhYm91dCB0aGF0LCBidXQgd2h5IG5vdCBhIGJpdCBtb3JlIGZsZXhp
YmlsaXR5PyBXaGVuIHVkbCANCmNvcGllcyBmcm9tIHRoZSBidWZmZXIsIGl0IGlzIGxpa2VseSBw
aW5uZWQgdG8gVlJBTS4NCg0KQSBiaXQgbWFzayBvZiBfQ1BVLCBfR1RULCBhbmQgX1ZSQU0gc2hv
dWxkIHdvcmsgZmluZS4gVGhlIG90aGVyIGRvbWFpbnMgDQphcmUgcHJvYmFibHkgaXJyZWxldmFu
dCBmb3Igb3VyIHVzZSBjYXNlLg0KDQpCZXN0IHJlZ2FyZHMNClRob21hcw0KDQo+DQo+IFJlZ2Fy
ZHMsDQo+IENocmlzdGlhbi4NCj4NCj4+ICsJICoNCj4+ICsJICogVGhpcyBjb2RlIGlzIHJlcXVp
cmVkIGZvciBleHBvcnRpbmcgdG8gR0VNLVNITUVNIHdpdGhvdXQgUy9HIHRhYmxlLg0KPj4gKwkg
KiBPbmNlIEdFTS1TSE1FTSBzdXBwb3J0cyBkeW5hbWljIGltcG9ydHMsIGl0IHNob3VsZCBiZSBk
cm9wcGVkLg0KPj4gKwkgKi8NCj4+ICsJcmV0ID0gYW1kZ3B1X2JvX3BpbihibywgQU1ER1BVX0dF
TV9ET01BSU5fTUFTSyk7DQo+PiArCWlmIChyZXQpDQo+PiArCQlyZXR1cm4gcmV0Ow0KPj4gKwly
ZXQgPSBkcm1fZ2VtX2RtYWJ1Zl92bWFwKGRtYV9idWYsIG1hcCk7DQo+PiArCWlmIChyZXQpDQo+
PiArCQlhbWRncHVfYm9fdW5waW4oYm8pOw0KPj4gKw0KPj4gKwlyZXR1cm4gcmV0Ow0KPj4gK30N
Cj4+ICsNCj4+ICtzdGF0aWMgdm9pZCBhbWRncHVfZG1hX2J1Zl92dW5tYXAoc3RydWN0IGRtYV9i
dWYgKmRtYV9idWYsIHN0cnVjdCBpb3N5c19tYXAgKm1hcCkNCj4+ICt7DQo+PiArCXN0cnVjdCBk
cm1fZ2VtX29iamVjdCAqb2JqID0gZG1hX2J1Zi0+cHJpdjsNCj4+ICsJc3RydWN0IGFtZGdwdV9i
byAqYm8gPSBnZW1fdG9fYW1kZ3B1X2JvKG9iaik7DQo+PiArDQo+PiArCWRybV9nZW1fZG1hYnVm
X3Z1bm1hcChkbWFfYnVmLCBtYXApOw0KPj4gKwlhbWRncHVfYm9fdW5waW4oYm8pOw0KPj4gK30N
Cj4+ICsNCj4+ICAgY29uc3Qgc3RydWN0IGRtYV9idWZfb3BzIGFtZGdwdV9kbWFidWZfb3BzID0g
ew0KPj4gICAJLmF0dGFjaCA9IGFtZGdwdV9kbWFfYnVmX2F0dGFjaCwNCj4+ICAgCS5waW4gPSBh
bWRncHVfZG1hX2J1Zl9waW4sDQo+PiBAQCAtMjk0LDggKzMyNiw4IEBAIGNvbnN0IHN0cnVjdCBk
bWFfYnVmX29wcyBhbWRncHVfZG1hYnVmX29wcyA9IHsNCj4+ICAgCS5yZWxlYXNlID0gZHJtX2dl
bV9kbWFidWZfcmVsZWFzZSwNCj4+ICAgCS5iZWdpbl9jcHVfYWNjZXNzID0gYW1kZ3B1X2RtYV9i
dWZfYmVnaW5fY3B1X2FjY2VzcywNCj4+ICAgCS5tbWFwID0gZHJtX2dlbV9kbWFidWZfbW1hcCwN
Cj4+IC0JLnZtYXAgPSBkcm1fZ2VtX2RtYWJ1Zl92bWFwLA0KPj4gLQkudnVubWFwID0gZHJtX2dl
bV9kbWFidWZfdnVubWFwLA0KPj4gKwkudm1hcCA9IGFtZGdwdV9kbWFfYnVmX3ZtYXAsDQo+PiAr
CS52dW5tYXAgPSBhbWRncHVfZG1hX2J1Zl92dW5tYXAsDQo+PiAgIH07DQo+PiAgIA0KPj4gICAv
KioNCg0KLS0gDQotLQ0KVGhvbWFzIFppbW1lcm1hbm4NCkdyYXBoaWNzIERyaXZlciBEZXZlbG9w
ZXINClNVU0UgU29mdHdhcmUgU29sdXRpb25zIEdlcm1hbnkgR21iSA0KRnJhbmtlbnN0cmFzc2Ug
MTQ2LCA5MDQ2MSBOdWVybmJlcmcsIEdlcm1hbnkNCkdGOiBJdm8gVG90ZXYsIEFuZHJldyBNeWVy
cywgQW5kcmV3IE1jRG9uYWxkLCBCb3VkaWVuIE1vZXJtYW4NCkhSQiAzNjgwOSAoQUcgTnVlcm5i
ZXJnKQ0KDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJv
Lm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVA
bGlzdHMubGluYXJvLm9yZwo=
