Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 36FE170B682
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 May 2023 09:27:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BE04643D13
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 May 2023 07:27:42 +0000 (UTC)
Received: from 189.cn (ptr.189.cn [183.61.185.103])
	by lists.linaro.org (Postfix) with ESMTP id 1C5F83EF13
	for <linaro-mm-sig@lists.linaro.org>; Mon, 22 May 2023 07:27:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of 15330273260@189.cn designates 183.61.185.103 as permitted sender) smtp.mailfrom=15330273260@189.cn;
	dmarc=none
HMM_SOURCE_IP: 10.64.8.31:33128.1682002454
HMM_ATTACHE_NUM: 0000
HMM_SOURCE_TYPE: SMTP
Received: from clientip-114.242.206.180 (unknown [10.64.8.31])
	by 189.cn (HERMES) with SMTP id B866E100300;
	Mon, 22 May 2023 15:27:32 +0800 (CST)
Received: from  ([114.242.206.180])
	by gateway-151646-dep-75648544bd-xp9j7 with ESMTP id abbe5cda707343189d29c65c97453682 for kernel@xen0n.name;
	Mon, 22 May 2023 15:27:35 CST
X-Transaction-ID: abbe5cda707343189d29c65c97453682
X-Real-From: 15330273260@189.cn
X-Receive-IP: 114.242.206.180
X-MEDUSA-Status: 0
Sender: 15330273260@189.cn
Message-ID: <b54d8f78-9d7c-8441-20f7-a4f3a2393081@189.cn>
Date: Mon, 22 May 2023 15:27:31 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: WANG Xuerui <kernel@xen0n.name>, Sui Jingfeng <15330273260@189.cn>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Li Yi <liyi@loongson.cn>, Sumit Semwal <sumit.semwal@linaro.org>,
 Christian Koenig <christian.koenig@amd.com>,
 Emil Velikov <emil.l.velikov@gmail.com>
References: <20230520105718.325819-1-15330273260@189.cn>
 <20230520105718.325819-2-15330273260@189.cn>
 <26fd78b9-c074-8341-c99c-4e3b38cd861a@xen0n.name>
From: Sui Jingfeng <15330273260@189.cn>
In-Reply-To: <26fd78b9-c074-8341-c99c-4e3b38cd861a@xen0n.name>
X-Spamd-Result: default: False [-1.64 / 15.00];
	BAYES_HAM(-2.94)[99.74%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:183.61.185.0/24];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[xen0n.name,189.cn,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,loongson.cn,linaro.org,amd.com];
	MID_RHS_MATCH_FROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[189.cn];
	R_DKIM_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:4134, ipnet:183.0.0.0/10, country:CN];
	NEURAL_HAM(-0.00)[-0.990];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DMARC_NA(0.00)[189.cn];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[renesas];
	FREEMAIL_FROM(0.00)[189.cn];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1C5F83EF13
X-Spamd-Bar: -
Message-ID-Hash: K7XRU7VQUAVEIJCKVGLMUDKML6WEJSFD
X-Message-ID-Hash: K7XRU7VQUAVEIJCKVGLMUDKML6WEJSFD
X-MailFrom: 15330273260@189.cn
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linaro-mm-sig@lists.linaro.org, loongson-kernel@lists.loongnix.cn, Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Javier Martinez Canillas <javierm@redhat.com>, Nathan Chancellor <nathan@kernel.org>, Liu Peibao <liupeibao@loongson.cn>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v14 1/2] drm: add kms driver for loongson display controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/K7XRU7VQUAVEIJCKVGLMUDKML6WEJSFD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGksDQoNCg0KSSBsb3ZlIHlvdXIgcmV2aWV3cywNCg0KDQpPbiAyMDIzLzUvMjEgMjA6MjEsIFdB
TkcgWHVlcnVpIHdyb3RlOg0KPiBIaSwNCj4NCj4gU29tZW9uZSBlbHNlIGluIGEgZGlzY3Vzc2lv
biBncm91cCBicm91Z2h0IG15IGF0dGVudGlvbiB0byB0aGlzIA0KPiBzZXJpZXMsIHRoYXQgSSd2
ZSBuZWdsZWN0ZWQgZm9yIGEgbG9uZyB0aW1lIGJlY2F1c2UgDQo+IGxvb25nYXJjaEBsaXN0cy5s
aW51eC5kZXYgaXNuJ3Qgb24gdGhlIENjIGxpc3QgYW5kIEknbSBub3Qgc3Vic2NyaWJlZCANCj4g
dG8gZHJpLWRldmVsLg0KPg0KPiBXaGlsZSBJJ20gcmVhc29uYWJseSBmYW1pbGlhciB3aXRoIExv
b25nQXJjaCBpbnRlcm5hbHMgYW5kIExpbnV4IGluIA0KPiBnZW5lcmFsLCBJIGRvbid0IHJlZ3Vs
YXJseSB0aW5rZXIgd2l0aCB0aGUgZ3JhcGhpY3MgdGhpbmdzLCBzbyBJJ20gDQo+IG1haW5seSBm
b2N1c2luZyBvbiB0aGUgbmF0dXJhbCBsYW5ndWFnZSB1c2FnZSBhbmQgZ2VuZXJhbCBjb2RlIHNt
ZWxscyANCj4gZm9yIG15IHJldmlld3MgYmVsb3cuIFBhcmRvbiBtZSBpZiBzb21lIG9mIHRoZSBx
dWVzdGlvbnMgc2VlbSBzaWxseS4NCj4NCj4gKEFmdGVyIGdvaW5nIHRocm91Z2ggdGhlIGVudGly
ZXR5IG9mIHRoaXM6ICpwbGVhc2UqIHNwZWxsLWNoZWNrIHlvdXIgDQo+IGNvbW1lbnQgYmxvY2tz
LCBhbmQgY29ycmVjdCBvYnZpb3VzIGdyYW1tYXRpY2FsIG5pdHMgYXMgYmVzdCBhcyB5b3UgDQo+
IGNhbi4gRnJvbSBteSBmaXJzdCBpbXByZXNzaW9uLCBhbHRob3VnaCBhIHJlYWRlciBub3QgZmFt
aWxpYXIgd2l0aCANCj4gTG9vbmdBcmNoIG5vciBDaGluZXNlIGNvdWxkIGdvIGEgbG9uZyB3YXkg
aW4gdW5kZXJzdGFuZGluZyB0aGlzLCBzb21lIA0KPiBvZiB0aGUgcmVzdCB3b3VsZCBiZSBtaXN1
bmRlcnN0b29kLCBvciBkb24ndCBtYWtlIHNlbnNlIGF0IGFsbC4gQW5kIA0KPiBsaWtlIDkwJSBv
ZiB0aGUgc2VudGVuY2VzIGFyZSBncmFtbWF0aWNhbGx5IGluY29ycmVjdCwgaS5lLiBhcmUgDQo+
IG9idmlvdXMgIkNoaW5nbGlzaCIuIE1heWJlIHNvbWV0aGluZyBsaWtlIHRob3NlIENoYXRHUFQt
YmFzZWQgc2VydmljZXMgDQo+IG9yIHNvbWVvbmUgaW4geW91ciBjb21wYW55IHdvdWxkIGhlbHAu
KQ0KPg0KT0ssIEkgZGlkbid0IHJlYWxpemUgdGhhdCBncmFtbWFyIHByb2JsZW0gY291bGQgdXAg
dG8gOTAlLg0KDQpJJ20gZm9jdXMgb24gZmVhdHVyZSBkZXZlbG9wbWVudCBwcmV2aW91c2x5LMKg
IEkgd2lsbCBkbyB0aGUgZ3JhbW1hciANCmNoZWNrIGJlZm9yZSBzZW5kIHRoZSBuZXh0IHZlcnNp
b24uDQoNCj4NCj4NClsuLi5dDQo+DQo+IE9uIDIwMjMvNS8yMCAxODo1NywgU3VpIEppbmdmZW5n
IHdyb3RlOg0KPj4gRnJvbTogU3VpIEppbmdmZW5nIDxzdWlqaW5nZmVuZ0Bsb29uZ3Nvbi5jbj4N
Cj4+DQo+PiBMb29uZ3NvbiBkaXNwbGF5IGNvbnRyb2xsZXIgSVAgaGFzIGJlZW4gaW50ZWdyYXRl
ZCBpbiBib3RoIExvb25nc29uIA0KPj4gbm9ydGgNCj4+IGJyaWRnZSBjaGlwc2V0KGxzN2ExMDAw
L2xzN2EyMDAwKSBhbmQgTG9vbmdzb24gDQo+PiBTb0NzKGxzMmsxMDAwL2xzMmsyMDAwKSwgaXQN
Cj4+IGhhcyBiZWVuIGV2ZW4gaW5jbHVkZWQgaW4gTG9vbmdzb24gc2VsZi1tYWRlIEJNQyBwcm9k
dWN0cy4NCj4+DQo+PiBUaGlzIGRpc3BsYXkgY29udHJvbGxlciBpcyBhIFBDSSBkZXZpY2UuIEl0
IGhhcyB0d28gZGlzcGxheSBwaXBlcyBhbmQgDQo+PiBlYWNoDQo+PiBkaXNwbGF5IHBpcGUgc3Vw
cG9ydCBhIHByaW1hcnkgcGxhbmUgYW5kIGEgY3Vyc29yIHBsYW5lLiBGb3IgdGhlIERDIA0KPj4g
aW4gdGhlDQo+DQo+ICJzdXBwb3J0cyINCk9rLCB5b3UgYXJlIGNvcnJlY3QgaGVyZS4NCj4NCj4+
IGxzN2ExMDAwIGFuZCBsczJrMTAwMCwgZWFjaCBkaXNwbGF5IHBpcGUgaGFzIGEgRFZPIG91dHB1
dCBpbnRlcmZhY2UgDQo+PiB3aGljaA0KPj4gcHJvdmlkZSBSR0I4ODggc2lnbmFscywgdmVydGlj
YWwgJiBob3Jpem9udGFsIHN5bmNocm9uaXNhdGlvbnMgYW5kIHBpeGVsDQo+DQo+ICJzeW5jaHJv
bmlzYXRpb24iDQo+DQpPaywgeW91IGFyZSBjb3JyZWN0IGhlcmUuDQo+PiBjbG9jay4gRWFjaCBD
UlRDIGlzIGFibGUgdG8gc3VwcG9ydCAxOTIweDEwODBANjBIeiwgdGhlIG1heGltdW0gDQo+PiBy
ZXNvbHV0aW9uDQo+DQo+ICJpcyBjYXBhYmxlIG9mIiBzb3VuZHMgbW9yZSBuYXR1cmFsPw0KPg0K
SSB0aGluayB0aGV5IGFyZSBlcXVpdmFsZW50LCBJIGNhbid0IHBlcmNlaXZlIHRoZSBkaWZmZXJl
bmNlLg0KPj4gb2YgZWFjaCBkaXNwbGF5IHBpcGUgaXMgMjA0OHgyMDQ4IGFjY29yZGluZyB0byB0
aGUgaGFyZHdhcmUgc3BlYy4NCj4+DQo+PiBGb3IgdGhlIERDIGluIExTN0EyMDAwLCBlYWNoIGRp
c3BsYXkgcGlwZSBpcyBlcXVpcHBlZCB3aXRoIGEgYnVpbHQtaW4gDQo+PiBIRE1JDQo+PiBlbmNv
ZGVyIHdoaWNoIGlzIGNvbXBsaWFudCB3aXRoIHRoZSBIRE1JIDEuNCBzcGVjaWZpY2F0aW9uLCB0
aHVzIGl0IA0KPj4gc3VwcG9ydA0KPg0KPiAic3VwcG9ydGluZyB1cCB0byAzODQweDIxNjBAMzBI
eiINCj4NCmFjY2VwdGFibGUNCj4+IDM4NDB4MjE2MEAzMEh6LiBUaGUgZmlyc3QgZGlzcGxheSBw
aXBlIGlzIGFsc28gZXF1aXBwZWQgd2l0aCBhIA0KPj4gdHJhbnNwYXJlbnQNCj4+IHZnYSBlbmNv
ZGVyIHdoaWNoIGlzIHBhcmFsbGVsIHdpdGggdGhlIEhETUkgZW5jb2Rlci4gVGhlIERDIGluIA0K
Pj4gTFM3QTIwMDAgaXMNCj4NCj4gIlRoZSBmaXJzdCBkaXNwbGF5IHBpcGUgYWRkaXRpb25hbGx5
IGhhcyBhIHRyYW5zcGFyZW50IFZHQSBlbmNvZGVyIj8NCj4NClRoZSBmaXJzdCBkaXNwbGF5IHBp
cGUocGlwZSAwKSBhbHNvIGhhcyBhIHRyYW5zcGFyZW50IFZHQSBlbmNvZGVyLg0KDQo+PiBtb3Jl
IGNvbXBsZXRlIGNvbXBhcmUgd2l0aCB0aGUgb25lIGluIG9sZCBjaGlwcywgYmVzaWRlcyBhYm92
ZSANCj4+IGZlYXR1cmUsIGl0DQo+PiBoYXMgdHdvIGhhcmR3YXJlIGN1cnNvcnMsIHR3byBoYXJk
d2FyZSB2YmxhbmsgY291bnRlciBhbmQgdHdvIHNjYW5vdXQNCj4+IHBvc2l0aW9uIHJlY29yZGVy
cyB1bml0LiBJdCBhbHNvIHN1cHBvcnQgdGlsZWQgZnJhbWVidWZmZXIgZm9ybWF0IHdoaWNoDQo+
PiBjYW4gYmUgc2Nhbm91dCB0aGUgdGlsZWQgZnJhbWVidWZmZXIgcmVuZGVyZWQgYnkgdGhlIExv
b25nR1BVIGRpcmVjdGx5Lg0KPg0KPiAiVGhlIERDIGluIExTN0EyMDAwIGlzIG1vcmUgZmVhdHVy
ZS1jb21wbGV0ZSBjb21wYXJlZCB3aXRoIHRoZSBvbGRlciANCj4gcmV2aXNpb246IGluIGFkZGl0
aW9uIHRvIHRoZSBhYm92ZSwgaXQgYWxzbyBoYXMgdHdvIGhhcmR3YXJlIGN1cnNvcnMsIA0KPiB0
d28gaGFyZHdhcmUgdmJsYW5rIGNvdW50ZXJzIGFuZCB0d28gc2Nhbm91dCBwb3NpdGlvbiByZWNv
cmRlcnMuIEl0IA0KPiBhbHNvIHN1cHBvcnRzIHRpbGVkIGZyYW1lYnVmZmVyIGZvcm1hdCBzbyB0
aGUgdGlsZWQgb3V0cHV0IGZyb20gdGhlIA0KPiBMb29uZ0dQVSBjYW4gYmUgc2Nhbm5lZCBvdXQg
ZGlyZWN0bHkuIg0KDQpPSywgYWNjZXB0YWJsZS4NCg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
