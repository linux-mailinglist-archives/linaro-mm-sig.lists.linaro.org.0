Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D6FD70B73C
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 May 2023 10:02:45 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7167344E1D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 May 2023 08:02:44 +0000 (UTC)
Received: from 189.cn (ptr.189.cn [183.61.185.103])
	by lists.linaro.org (Postfix) with ESMTP id C0BE13EF21
	for <linaro-mm-sig@lists.linaro.org>; Mon, 22 May 2023 08:02:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of 15330273260@189.cn designates 183.61.185.103 as permitted sender) smtp.mailfrom=15330273260@189.cn;
	dmarc=none
HMM_SOURCE_IP: 10.64.8.43:58120.1490266714
HMM_ATTACHE_NUM: 0000
HMM_SOURCE_TYPE: SMTP
Received: from clientip-114.242.206.180 (unknown [10.64.8.43])
	by 189.cn (HERMES) with SMTP id 00AEA1002C4;
	Mon, 22 May 2023 16:02:34 +0800 (CST)
Received: from  ([114.242.206.180])
	by gateway-151646-dep-75648544bd-7vx9t with ESMTP id 1a4434578fbd45abb00625fc7c141694 for kernel@xen0n.name;
	Mon, 22 May 2023 16:02:36 CST
X-Transaction-ID: 1a4434578fbd45abb00625fc7c141694
X-Real-From: 15330273260@189.cn
X-Receive-IP: 114.242.206.180
X-MEDUSA-Status: 0
Sender: 15330273260@189.cn
Message-ID: <73447e35-f4df-9871-6210-b7bf1a3f04fc@189.cn>
Date: Mon, 22 May 2023 16:02:34 +0800
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
From: Sui Jingfeng <15330273260@189.cn>
In-Reply-To: <26fd78b9-c074-8341-c99c-4e3b38cd861a@xen0n.name>
X-Spamd-Result: default: False [-1.70 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:183.61.185.0/24];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[xen0n.name,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,loongson.cn,linaro.org,amd.com];
	MID_RHS_MATCH_FROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[189.cn];
	R_DKIM_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:4134, ipnet:183.0.0.0/10, country:CN];
	NEURAL_HAM(-0.00)[-0.986];
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
X-Rspamd-Queue-Id: C0BE13EF21
X-Spamd-Bar: -
Message-ID-Hash: F5DAQ6Y4VMYCUKENPY5C6EIJOGAYIDP3
X-Message-ID-Hash: F5DAQ6Y4VMYCUKENPY5C6EIJOGAYIDP3
X-MailFrom: 15330273260@189.cn
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linaro-mm-sig@lists.linaro.org, loongson-kernel@lists.loongnix.cn, Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Javier Martinez Canillas <javierm@redhat.com>, Nathan Chancellor <nathan@kernel.org>, Liu Peibao <liupeibao@loongson.cn>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v14 1/2] drm: add kms driver for loongson display controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/F5DAQ6Y4VMYCUKENPY5C6EIJOGAYIDP3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGksDQoNCk9uIDIwMjMvNS8yMSAyMDoyMSwgV0FORyBYdWVydWkgd3JvdGU6DQo+PiAtLS0gL2Rl
di9udWxsDQo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vbG9vbmdzb24vS2NvbmZpZw0KPj4gQEAg
LTAsMCArMSwxNyBAQA0KPj4gKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjANCj4+
ICsNCj4+ICtjb25maWcgRFJNX0xPT05HU09ODQo+PiArwqDCoMKgIHRyaXN0YXRlICJEUk0gc3Vw
cG9ydCBmb3IgTG9vbmdzb24gR3JhcGhpY3MiDQo+PiArwqDCoMKgIGRlcGVuZHMgb24gRFJNICYm
IFBDSSAmJiBNTVUNCj4+ICvCoMKgwqAgc2VsZWN0IERSTV9LTVNfSEVMUEVSDQo+PiArwqDCoMKg
IHNlbGVjdCBEUk1fVFRNDQo+PiArwqDCoMKgIHNlbGVjdCBJMkMNCj4+ICvCoMKgwqAgc2VsZWN0
IEkyQ19BTEdPQklUDQo+PiArwqDCoMKgIGhlbHANCj4+ICvCoMKgwqDCoMKgIFRoaXMgaXMgYSBE
Uk0gZHJpdmVyIGZvciBMb29uZ3NvbiBHcmFwaGljcywgaXQgbWF5IGluY2x1ZGluZw0KPg0KPiBE
cm9wICJpdCBtYXkiOyAiaW5jbHVkaW5nIiBzaG91bGQgYmUgZW5vdWdoLg0KPg0KJ2l0IG1heScg
aXMgbW9yZSAqcHJlY2lzZSogaGVyZSwgYmVjYXVzZSBjdXJyZW50bHkgd2UgZG9uJ3Qgc2hpcCB3
aXRoIA0KdGhlIHN1cHBvcnQgZm9yIGxvb25nc29uIDJLIHNlcmllcyBTb0MuDQoNCkknbSB0cnkg
dG8gYmUgcHJlY2lzZSBhcyBmYXIgYXMgSSBjYW4sIHdlIGF2b2lkIG1hZGUgdGhpcyBkcml2ZXIg
dG9vIA0KbGFyZ2UgYnkgaWdub3JlIGxvb25nc29uIDJLIHNlcmllcyBTb0MgdGVtcG9yYXJ5Lg0K
DQo+PiArwqDCoMKgwqDCoCBMUzdBMjAwMCwgTFM3QTEwMDAsIExTMksyMDAwIGFuZCBMUzJLMTAw
MCBldGMuIExvb25nc29uIExTN0ENCj4+ICvCoMKgwqDCoMKgIHNlcmllcyBhcmUgYnJpZGdlIGNo
aXBzZXQsIHdoaWxlIExvb25nc29uIExTMksgc2VyaWVzIGFyZSBTb0MuDQo+PiArDQo+PiArwqDC
oMKgwqDCoCBJZiAiTSIgaXMgc2VsZWN0ZWQsIHRoZSBtb2R1bGUgd2lsbCBiZSBjYWxsZWQgbG9v
bmdzb24uDQo+DQo+IEp1c3QgImxvb25nc29uIj8gDQoNClllcyzCoCB3aGVuIGNvbXBpbGUgdGhp
cyBkcml2ZXIgYXMgbW9kdWxlLMKgIGxvb25nc29uLmtvIHdpbGwgYmUgZ2VuZXJhdGVkLg0KDQog
wqBkcm0gcmFkZW9uIGlzIGFsc28gZG9pbmcgc28sIFNlZSBkcm0vcmFkZW9uL0tjb25maWcuDQoN
Cj4gSSBrbm93IGl0J3MgbGlrZSB0aGlzIGZvciBhZ2VzIChhdCBsZWFzdCBkYXRpbmcgYmFjayB0
byB0aGUgTUlQUyBkYXlzKSANCj4gYnV0IHlvdSByZWFsbHkgZG9uJ3Qgd2FudCB0byBpbXBseSBM
b29uZ3NvbiBpcyBtYWlubHkgYSBHUFUgY29tcGFueS4gDQo+IFNvbWV0aGluZyBsaWtlICJsb29u
Z3Nvbl9kcm0iIG9yICJsc2RjIiBvciAiZ3NncHUiIGNvdWxkIGJlIGJldHRlci4gDQoNCk5vLCB0
aGVzZSBuYW1lIG1heSBoYXZlIGJhY2t3YXJkIGNvbXBhdGliaWxpdHkgcHJvYmxlbXMuDQoNCkRv
d25zdHJlYW0gZHJpdmVyIGFscmVhZHkgdGFrZW4gdGhvc2UgbmFtZS4NCg0KdXNlcnNwYWNlIGRy
aXZlciBuZWVkIHRvIGRpZmZlcmVudGlhdGUgdGhlbSB3aG8gaXMgd2hvLg0KDQoNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
