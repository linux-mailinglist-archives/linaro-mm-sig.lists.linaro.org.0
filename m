Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B3970B7A2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 May 2023 10:29:41 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9C9A943D1E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 May 2023 08:29:40 +0000 (UTC)
Received: from 189.cn (ptr.189.cn [183.61.185.101])
	by lists.linaro.org (Postfix) with ESMTP id 983923EF21
	for <linaro-mm-sig@lists.linaro.org>; Mon, 22 May 2023 08:29:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of 15330273260@189.cn designates 183.61.185.101 as permitted sender) smtp.mailfrom=15330273260@189.cn;
	dmarc=none
HMM_SOURCE_IP: 10.64.8.31:56210.1039000333
HMM_ATTACHE_NUM: 0000
HMM_SOURCE_TYPE: SMTP
Received: from clientip-114.242.206.180 (unknown [10.64.8.31])
	by 189.cn (HERMES) with SMTP id 651AF1002D6;
	Mon, 22 May 2023 16:29:30 +0800 (CST)
Received: from  ([114.242.206.180])
	by gateway-151646-dep-75648544bd-xp9j7 with ESMTP id 7db92210a86f4e62a567642a3e628660 for kernel@xen0n.name;
	Mon, 22 May 2023 16:29:33 CST
X-Transaction-ID: 7db92210a86f4e62a567642a3e628660
X-Real-From: 15330273260@189.cn
X-Receive-IP: 114.242.206.180
X-MEDUSA-Status: 0
Sender: 15330273260@189.cn
Message-ID: <d8e7a1ee-317c-6b44-27eb-ea637f8813ec@189.cn>
Date: Mon, 22 May 2023 16:29:29 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: WANG Xuerui <kernel@xen0n.name>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sui Jingfeng <suijingfeng@loongson.cn>, Li Yi <liyi@loongson.cn>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Christian Koenig <christian.koenig@amd.com>,
 Emil Velikov <emil.l.velikov@gmail.com>
References: <20230520105718.325819-1-15330273260@189.cn>
 <20230520105718.325819-2-15330273260@189.cn>
 <26fd78b9-c074-8341-c99c-4e3b38cd861a@xen0n.name>
 <73447e35-f4df-9871-6210-b7bf1a3f04fc@189.cn>
 <97fe7af2-0a93-3f28-db6e-40a9b0798d49@xen0n.name>
From: Sui Jingfeng <15330273260@189.cn>
In-Reply-To: <97fe7af2-0a93-3f28-db6e-40a9b0798d49@xen0n.name>
X-Spamd-Result: default: False [-2.70 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_IN_DNSWL_HI(-1.00)[114.242.206.180:received,183.61.185.101:from];
	R_SPF_ALLOW(-0.20)[+ip4:183.61.185.0/24];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	FREEMAIL_ENVFROM(0.00)[189.cn];
	FREEMAIL_TO(0.00)[xen0n.name,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,loongson.cn,linaro.org,amd.com];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:4134, ipnet:183.0.0.0/10, country:CN];
	NEURAL_HAM(-0.00)[-0.988];
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
X-Rspamd-Queue-Id: 983923EF21
X-Spamd-Bar: --
Message-ID-Hash: 6QIM5YBKTS5FGHADRR2MSBKN27R73XFX
X-Message-ID-Hash: 6QIM5YBKTS5FGHADRR2MSBKN27R73XFX
X-MailFrom: 15330273260@189.cn
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linaro-mm-sig@lists.linaro.org, loongson-kernel@lists.loongnix.cn, Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Javier Martinez Canillas <javierm@redhat.com>, Nathan Chancellor <nathan@kernel.org>, Liu Peibao <liupeibao@loongson.cn>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v14 1/2] drm: add kms driver for loongson display controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6QIM5YBKTS5FGHADRR2MSBKN27R73XFX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQpPbiAyMDIzLzUvMjIgMTY6MDksIFdBTkcgWHVlcnVpIHdyb3RlOg0KPiBPbiAyMDIzLzUvMjIg
MTY6MDIsIFN1aSBKaW5nZmVuZyB3cm90ZToNCj4+IEhpLA0KPj4NCj4+IE9uIDIwMjMvNS8yMSAy
MDoyMSwgV0FORyBYdWVydWkgd3JvdGU6DQo+Pj4+IC0tLSAvZGV2L251bGwNCj4+Pj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2xvb25nc29uL0tjb25maWcNCj4+Pj4gQEAgLTAsMCArMSwxNyBAQA0K
Pj4+PiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMA0KPj4+PiArDQo+Pj4+ICtj
b25maWcgRFJNX0xPT05HU09ODQo+Pj4+ICvCoMKgwqAgdHJpc3RhdGUgIkRSTSBzdXBwb3J0IGZv
ciBMb29uZ3NvbiBHcmFwaGljcyINCj4+Pj4gK8KgwqDCoCBkZXBlbmRzIG9uIERSTSAmJiBQQ0kg
JiYgTU1VDQo+Pj4+ICvCoMKgwqAgc2VsZWN0IERSTV9LTVNfSEVMUEVSDQo+Pj4+ICvCoMKgwqAg
c2VsZWN0IERSTV9UVE0NCj4+Pj4gK8KgwqDCoCBzZWxlY3QgSTJDDQo+Pj4+ICvCoMKgwqAgc2Vs
ZWN0IEkyQ19BTEdPQklUDQo+Pj4+ICvCoMKgwqAgaGVscA0KPj4+PiArwqDCoMKgwqDCoCBUaGlz
IGlzIGEgRFJNIGRyaXZlciBmb3IgTG9vbmdzb24gR3JhcGhpY3MsIGl0IG1heSBpbmNsdWRpbmcN
Cj4+Pg0KPj4+IERyb3AgIml0IG1heSI7ICJpbmNsdWRpbmciIHNob3VsZCBiZSBlbm91Z2guDQo+
Pj4NCj4+ICdpdCBtYXknIGlzIG1vcmUgKnByZWNpc2UqIGhlcmUsIGJlY2F1c2UgY3VycmVudGx5
IHdlIGRvbid0IHNoaXAgd2l0aCANCj4+IHRoZSBzdXBwb3J0IGZvciBsb29uZ3NvbiAySyBzZXJp
ZXMgU29DLg0KPj4NCj4+IEknbSB0cnkgdG8gYmUgcHJlY2lzZSBhcyBmYXIgYXMgSSBjYW4sIHdl
IGF2b2lkIG1hZGUgdGhpcyBkcml2ZXIgdG9vIA0KPj4gbGFyZ2UgYnkgaWdub3JlIGxvb25nc29u
IDJLIHNlcmllcyBTb0MgdGVtcG9yYXJ5Lg0KPg0KPiBUaGF0J3MgYSBnb29kIGlkZWEhIEZvciBu
b3cgdGhlIHBhdGNoIGlzIHNvIGxhcmdlIHRoYXQgbXkgcmV2aWV3IHJlcGx5IA0KPiBpcyBzYWlk
IHRvIGJlIGRyb3BwZWQgYnkgdGhlIGxpc3RzLiBGb2N1c2luZyBvbiBvbmUgYnVuY2ggb2Ygc2lt
aWxhciANCj4gbW9kZWxzIGZpcnN0IHRoZW4gYWRkaW5nIHN1cHBvcnQgZm9yIHRoZSByZXN0IG5v
dC1zby1zaW1pbGFyIG1vZGVscyBpcyANCj4gdmVyeSBmcmllbmRseSB0b3dhcmRzIHRoZSByZXZp
ZXdpbmcgcHJvY2VzcyBhbmQgd2lsbCBoZWxwIGNvZGUgcXVhbGl0eSANCj4gdG9vLg0KPg0KPj4N
Cj4+Pj4gK8KgwqDCoMKgwqAgTFM3QTIwMDAsIExTN0ExMDAwLCBMUzJLMjAwMCBhbmQgTFMySzEw
MDAgZXRjLiBMb29uZ3NvbiBMUzdBDQo+Pj4+ICvCoMKgwqDCoMKgIHNlcmllcyBhcmUgYnJpZGdl
IGNoaXBzZXQsIHdoaWxlIExvb25nc29uIExTMksgc2VyaWVzIGFyZSBTb0MuDQo+Pj4+ICsNCj4+
Pj4gK8KgwqDCoMKgwqAgSWYgIk0iIGlzIHNlbGVjdGVkLCB0aGUgbW9kdWxlIHdpbGwgYmUgY2Fs
bGVkIGxvb25nc29uLg0KPj4+DQo+Pj4gSnVzdCAibG9vbmdzb24iPyANCj4+DQo+PiBZZXMswqAg
d2hlbiBjb21waWxlIHRoaXMgZHJpdmVyIGFzIG1vZHVsZSzCoCBsb29uZ3Nvbi5rbyB3aWxsIGJl
IA0KPj4gZ2VuZXJhdGVkLg0KPj4NCj4+IMKgwqBkcm0gcmFkZW9uIGlzIGFsc28gZG9pbmcgc28s
IFNlZSBkcm0vcmFkZW9uL0tjb25maWcuDQo+Pg0KPj4+IEkga25vdyBpdCdzIGxpa2UgdGhpcyBm
b3IgYWdlcyAoYXQgbGVhc3QgZGF0aW5nIGJhY2sgdG8gdGhlIE1JUFMgDQo+Pj4gZGF5cykgYnV0
IHlvdSByZWFsbHkgZG9uJ3Qgd2FudCB0byBpbXBseSBMb29uZ3NvbiBpcyBtYWlubHkgYSBHUFUg
DQo+Pj4gY29tcGFueS4gU29tZXRoaW5nIGxpa2UgImxvb25nc29uX2RybSIgb3IgImxzZGMiIG9y
ICJnc2dwdSIgY291bGQgYmUgDQo+Pj4gYmV0dGVyLiANCj4+DQo+PiBObywgdGhlc2UgbmFtZSBt
YXkgaGF2ZSBiYWNrd2FyZCBjb21wYXRpYmlsaXR5IHByb2JsZW1zLg0KPj4NCj4+IERvd25zdHJl
YW0gZHJpdmVyIGFscmVhZHkgdGFrZW4gdGhvc2UgbmFtZS4NCj4+DQo+PiB1c2Vyc3BhY2UgZHJp
dmVyIG5lZWQgdG8gZGlmZmVyZW50aWF0ZSB0aGVtIHdobyBpcyB3aG8uDQo+DQo+IElNTyB0aGlz
IHNob3VsZG4ndCBiZSBhIHByb2JsZW0uIExldCBtZSB0cnkgZXhwbGFpbmluZyB0aGlzOiANCj4g
Y3VycmVudGx5LCB1cHN0cmVhbSAvIHRoZSAibmV3IHdvcmxkIiBkb2Vzbid0IGhhdmUgYW55IHN1
cHBvcnQgZm9yIA0KPiB0aGlzIGRyaXZlciBhdCBhbGwsIHNvIGFueSBuYW1lIHdpbGwgd29yazsg
anVzdCB1c2Ugd2hhdGV2ZXIgaXMgDQo+IGFwcHJvcHJpYXRlIGZyb20gYW4gdXBzdHJlYW0ncyBw
ZXJzcGVjdGl2ZSwgdGhlbiBtYWtlIHRoZSB1c2Vyc3BhY2UgDQo+IGJpdHMgcmVjb2duaXplIGJv
dGggdmFyaWFudHMsIGFuZCB5b3UnbGwgYmUgZmluZS4gQW5kIHRoZSAiZXhpc3RpbmciIA0KPiB1
c2Vyc3BhY2UgZHJpdmVycyBjYW4gYWxzbyBjYXJyeSB0aGUgY2hhbmdlLCBpdCdsbCBqdXN0IGJl
IGEgYnJhbmNoIA0KPiBuZXZlciB0YWtlbiBpbiB0aGF0IHNldHVwLg0KPg0KPiBTbywgSSdtIHN0
aWxsIGluIGZhdm9yIG9mIGtlZXBpbmcgdGhlIHVwc3RyZWFtICJjbGVhbiIgd2l0aG91dCBkdWJp
b3VzIA0KPiBuYW1lcyBsaWtlIHRoaXMgKGJhcmUgImxvb25nc29uIikuIFdoYXQgZG8geW91IHRo
aW5rIGFib3V0IG15IA0KPiBzdWdnZXN0aW9uIGFib3ZlPw0KPg0KTm8sDQoNCnRoZXJlIGlzIGEg
J2FybScgZm9sZGVyIGluIHRoZSBkcml2ZXJzL2dwdS9kcm0vLMKgIEl0IGRvZXNuJ3Qgc2F5IHRo
YXQgDQphcm0gaXMgYSBwdXJlIGdwdSBjb21wYW55Lg0KDQp0aGVyZSBpcyBhICdpbmdlbmljJyBm
b2xkZXIgaW4gdGhlIGRyaXZlcnMvZ3B1L2RybS8sIGluZ2VuaWMgYWxzbyBoYXZlIA0KdGhlaXIg
b3duIGN1c3RvbSBDUFVzLg0KDQp0aGVyZSBpcyBhICdhbWQnIGZvbGRlciBpbiB0aGUgZHJpdmVy
cy9ncHUvZHJtLywgdGhlc2UgZG9lc24ndCBpbXBseSBhbWQgDQppcyBtYWlubHkgYSBHUFUgY29t
cGFueS4NCg0Kd2hlbiBhIGZvbGRlciBlbWVyZ2VkIGluIGRybS8sIGl0IHN0YW5kIGZvciB0aGUg
R1BVIHJlbGF0ZWQgcGFydCBvZiB0aGlzIA0KY29tcGFueS4NCg0KDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlz
dCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
