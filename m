Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 09FB570B9C6
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 May 2023 12:18:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0E71B43D3A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 May 2023 10:18:08 +0000 (UTC)
Received: from 189.cn (ptr.189.cn [183.61.185.102])
	by lists.linaro.org (Postfix) with ESMTP id DAD603EF52
	for <linaro-mm-sig@lists.linaro.org>; Mon, 22 May 2023 10:18:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of 15330273260@189.cn designates 183.61.185.102 as permitted sender) smtp.mailfrom=15330273260@189.cn;
	dmarc=none
HMM_SOURCE_IP: 10.64.8.41:35068.1997184214
HMM_ATTACHE_NUM: 0000
HMM_SOURCE_TYPE: SMTP
Received: from clientip-114.242.206.180 (unknown [10.64.8.41])
	by 189.cn (HERMES) with SMTP id 9D59E1002F0;
	Mon, 22 May 2023 18:17:59 +0800 (CST)
Received: from  ([114.242.206.180])
	by gateway-151646-dep-75648544bd-xwndj with ESMTP id 386118d5a73a46768adbda9158d7dc68 for kernel@xen0n.name;
	Mon, 22 May 2023 18:18:01 CST
X-Transaction-ID: 386118d5a73a46768adbda9158d7dc68
X-Real-From: 15330273260@189.cn
X-Receive-IP: 114.242.206.180
X-MEDUSA-Status: 0
Sender: 15330273260@189.cn
Message-ID: <5ae49b7a-b8d2-a822-65bc-6a894d2b1b4e@189.cn>
Date: Mon, 22 May 2023 18:17:58 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: WANG Xuerui <kernel@xen0n.name>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Li Yi <liyi@loongson.cn>, Sumit Semwal <sumit.semwal@linaro.org>,
 Christian Koenig <christian.koenig@amd.com>,
 Emil Velikov <emil.l.velikov@gmail.com>
References: <20230520105718.325819-1-15330273260@189.cn>
 <20230520105718.325819-2-15330273260@189.cn>
 <26fd78b9-c074-8341-c99c-4e3b38cd861a@xen0n.name>
 <e7f911cc-6588-bc0f-8e1e-759260f5187a@189.cn>
 <ed795dc0-823a-f3d8-9e70-1cf33c0de7f0@xen0n.name>
 <ac2fde55-c770-fbb5-844d-50fb38dd90be@189.cn>
 <331e7baa-a83b-b0c9-37f7-0e8e39187df4@xen0n.name>
From: Sui Jingfeng <15330273260@189.cn>
In-Reply-To: <331e7baa-a83b-b0c9-37f7-0e8e39187df4@xen0n.name>
X-Spamd-Result: default: False [-2.70 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_IN_DNSWL_HI(-1.00)[183.61.185.102:from,114.242.206.180:received];
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
	NEURAL_HAM(-0.00)[-0.989];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DMARC_NA(0.00)[189.cn];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[renesas];
	FREEMAIL_FROM(0.00)[189.cn];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: DAD603EF52
X-Spamd-Bar: --
Message-ID-Hash: VWLHF3XQUSCWI6UNKDG4UGGDDIEQZMXQ
X-Message-ID-Hash: VWLHF3XQUSCWI6UNKDG4UGGDDIEQZMXQ
X-MailFrom: 15330273260@189.cn
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linaro-mm-sig@lists.linaro.org, loongson-kernel@lists.loongnix.cn, Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Javier Martinez Canillas <javierm@redhat.com>, Nathan Chancellor <nathan@kernel.org>, Liu Peibao <liupeibao@loongson.cn>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v14 1/2] drm: add kms driver for loongson display controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VWLHF3XQUSCWI6UNKDG4UGGDDIEQZMXQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGksDQoNCk9uIDIwMjMvNS8yMiAxODowNSwgV0FORyBYdWVydWkgd3JvdGU6DQo+IE9uIDIwMjMv
NS8yMiAxNzo0OSwgU3VpIEppbmdmZW5nIHdyb3RlOg0KPj4gSGksDQo+Pg0KPj4gT24gMjAyMy81
LzIyIDE3OjI4LCBXQU5HIFh1ZXJ1aSB3cm90ZToNCj4+PiBPbiAyMDIzLzUvMjIgMTc6MjUsIFN1
aSBKaW5nZmVuZyB3cm90ZToNCj4+Pj4gSGksDQo+Pj4+DQo+Pj4+IE9uIDIwMjMvNS8yMSAyMDoy
MSwgV0FORyBYdWVydWkgd3JvdGU6DQo+Pj4+Pj4gKyAqIExTM0E0MDAwL0xTM0E1MDAwL0xTM0E2
MDAwIENQVSwgdGhleSBhcmUgZXF1aXBwZWQgd2l0aCANCj4+Pj4+PiBvbi1ib2FyZCB2aWRlbyBS
QU0NCj4+Pj4+PiArICogdHlwaWNhbGx5LiBXaGlsZSBMUzJLMDUwMC9MUzJLMTAwMC9MUzJLMjAw
MCBhcmUgbG93IGNvc3QgU29DcyANCj4+Pj4+PiB3aGljaCBzaGFyZQ0KPj4+Pj4+ICsgKiB0aGUg
c3lzdGVtIFJBTSBhcyB2aWRlbyBSQU0sIHRoZXkgZG9uJ3QgaGFzIGEgZGVkaWFjYXRlZCBWUkFN
Lg0KPj4+Pj4NCj4+Pj4+IENQVSBtb2RlbHMgYXJlIG5vdCB0eXBpY2FsbHkgcHJlZml4ZWQgd2l0
aCAiTFMiLCBzbyAiTG9vbmdzb24gDQo+Pj4+PiAzQTQwMDAvM0E1MDAwLzNBNjAwMCIuDQo+Pj4+
Pg0KPj4+PiBIZXJlIGlzIGJlY2F1c2Ugd2hlbiB5b3UgZG8gcHJvZ3JhbW1pbmcsIHZhcmlhYmxl
IG5hbWUgc2hvdWxkIA0KPj4+PiBwcmVmaXggd2l0aCBsZXR0ZXJzLg0KPj4+DQo+Pj4gQ29tbWl0
IG1lc3NhZ2VzLCBjb21tZW50cywgYW5kIGxvZyBtZXNzYWdlcyBldGMuIGFyZSBuYXR1cmFsIA0K
Pj4+IGxhbmd1YWdlLCBzbyBpdCdzIGJldHRlciB0byB0cmVhdCB0aGVtIGRpZmZlcmVudGx5LiBO
byBwcm9ibGVtIHRvIA0KPj4+IGtlZXAgY29kZSBhcy1pcyBJTU8uDQo+Pj4NCj4+IFRoZW4geW91
IGdldCB0d28gbmFtZSBmb3IgYSBzaW5nbGUgY2hpcCzCoCB0YWtlwqAgTFM3QTEwMDAgYXMgYW4g
ZXhhbXBsZS4NCj4+DQo+PiBZb3UgbmFtZSBpdCBhcyBMb29uZ3NvbiA3QTEwMDAgaW4gY29tbWl0
IG1lc3NhZ2UswqAgYW5kIHRoZW4geW91IGhhdmUgDQo+PiB0byBkZWZpbmUgYW5vdGhlciBuYW1l
IGluIHRoZSBjb2RlLMKgIHNheSBMUzdBMTAwMC4NCj4+DQo+PiAiTG9vbmdzb24gN0ExMDAwIiBp
cyB0b28gbG9uZyzCoCBub3QgYXMgY29tcGFjdCBhcyBMUzdBMTAwMC4NCj4+DQo+PiBUaGlzIGFs
c28gYXZvaWQgYmluZCB0aGUgY29tcGFueSBuYW1lIHRvIGEgc3BlY2lmaWMgcHJvZHVjdCwgYmVj
YXVzZSANCj4+IGEgY29tcGFueSBjYW4gcHJvZHVjZSBtYW55IHByb2R1Y3QuDQo+DQo+IE5haCwg
dGhlIGV4aXN0aW5nIGNvbnZlbnRpb24gaXMgIkxTN1h4eHh4IiBmb3IgYnJpZGdlcyBhbmQgIkxv
b25nc29uIA0KPiAzQXh4eHgiIGZvciBDUFVzIChTb0NzIGxpa2UgMksgZmFsbCB1bmRlciB0aGlz
IGNhdGVnb3J5IHRvbykuIEl0J3MgDQo+IGJldHRlciB0byBzdGljayB3aXRoIGV4aXN0aW5nIHBy
YWN0aWNlIHNvIGl0IHdvdWxkIGJlIGZhbWlsaWFyIHRvIA0KPiBsb25nLXRpbWUgTG9vbmdzb24v
TG9vbmdBcmNoIGRldmVsb3BlcnMsIGJ1dCBJIHBlcnNvbmFsbHkgZG9uJ3QgdGhpbmsgDQo+IGl0
IHdpbGwgaGFtcGVyIHVuZGVyc3RhbmRpbmcgaWYgeW91IGZlZWwgbGlrZSBkb2luZyBvdGhlcndp
c2UuDQo+DQpDYW4geW91IGV4cGxhaW4gd2h5IGl0IGlzIGJldHRlcj8NCg0KaXMgaXQgdGhhdCB0
aGUgYWxyZWFkeSBleGlzdGluZyBpcyBiZXR0ZXIgPw0KDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
