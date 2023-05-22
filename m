Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 8232870B934
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 May 2023 11:39:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7826443D12
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 May 2023 09:39:15 +0000 (UTC)
Received: from 189.cn (ptr.189.cn [183.61.185.104])
	by lists.linaro.org (Postfix) with ESMTP id 835E13EE6A
	for <linaro-mm-sig@lists.linaro.org>; Mon, 22 May 2023 09:39:10 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of 15330273260@189.cn designates 183.61.185.104 as permitted sender) smtp.mailfrom=15330273260@189.cn;
	dmarc=none
HMM_SOURCE_IP: 10.64.8.43:45930.480737609
HMM_ATTACHE_NUM: 0000
HMM_SOURCE_TYPE: SMTP
Received: from clientip-114.242.206.180 (unknown [10.64.8.43])
	by 189.cn (HERMES) with SMTP id CDB431027B3;
	Mon, 22 May 2023 17:39:04 +0800 (CST)
Received: from  ([114.242.206.180])
	by gateway-151646-dep-75648544bd-7vx9t with ESMTP id ff48244c426145599a0b94bdcbcc663f for kernel@xen0n.name;
	Mon, 22 May 2023 17:39:08 CST
X-Transaction-ID: ff48244c426145599a0b94bdcbcc663f
X-Real-From: 15330273260@189.cn
X-Receive-IP: 114.242.206.180
X-MEDUSA-Status: 0
Sender: 15330273260@189.cn
Message-ID: <32ab39b4-da1c-7f87-74b9-ec64ebdb8dfc@189.cn>
Date: Mon, 22 May 2023 17:39:04 +0800
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
	FREEMAIL_TO(0.00)[xen0n.name,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,loongson.cn,linaro.org,amd.com];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:4134, ipnet:183.0.0.0/10, country:CN];
	FREEMAIL_ENVFROM(0.00)[189.cn];
	NEURAL_HAM(-0.00)[-0.941];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DMARC_NA(0.00)[189.cn];
	RWL_MAILSPIKE_POSSIBLE(0.00)[183.61.185.104:from];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[189.cn];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[renesas];
	RCVD_COUNT_TWO(0.00)[2]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 835E13EE6A
X-Spamd-Bar: -
Message-ID-Hash: G7DD26NUF57BRD6JCQ6RQRY43RI6T7TO
X-Message-ID-Hash: G7DD26NUF57BRD6JCQ6RQRY43RI6T7TO
X-MailFrom: 15330273260@189.cn
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linaro-mm-sig@lists.linaro.org, loongson-kernel@lists.loongnix.cn, Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Javier Martinez Canillas <javierm@redhat.com>, Nathan Chancellor <nathan@kernel.org>, Liu Peibao <liupeibao@loongson.cn>, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v14 1/2] drm: add kms driver for loongson display controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/G7DD26NUF57BRD6JCQ6RQRY43RI6T7TO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGksDQoNCk9uIDIwMjMvNS8yMSAyMDoyMSwgV0FORyBYdWVydWkgd3JvdGU6DQo+PiArI2lmbmRl
ZiBfX0xTRENfUkVHU19IX18NCj4+ICsjZGVmaW5lIF9fTFNEQ19SRUdTX0hfXw0KPj4gKw0KPj4g
KyNpbmNsdWRlIDxsaW51eC9iaXRvcHMuaD4NCj4+ICsjaW5jbHVkZSA8bGludXgvdHlwZXMuaD4N
Cj4+ICsNCj4+ICsvKg0KPj4gKyAqIFBJWEVMIFBMTCBSZWZlcmVuY2UgY2xvY2sNCj4+ICsgKi8N
Cj4+ICsjZGVmaW5lIExTRENfUExMX1JFRl9DTEvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgMTAwMDAwwqDCoMKgwqDCoMKgwqDCoMKgwqAgLyoga0h6ICovDQo+DQo+IENvbnNpZGVyIG5h
bWluZyBpdCBsaWtlICJMU0RDX1BMTF9SRUZfQ0xLX0tIWiIgZm9yIGl0IHRvIGJlIA0KPiBzZWxm
LWRvY3VtZW50aW5nPw0KPg0KSW5kZWVkLCB0aGlzIGlzIHJlYWxseSByZWFzb25hYmxlLsKgIENh
biBiZSBzZWxmLWRvY3VtZW50aW5nLg0KDQp0aGFua3MuDQoNCj4+ICsNCj4+ICsvKg0KPj4gKyAq
IFRob3NlIFBMTCByZWdpc3RlcnMgYXJlIHJlbGF0aXZlIHRvIExTeHh4eHhfQ0ZHX1JFR19CQVNF
LiB4eHh4eCA9IA0KPj4gN0ExMDAwLA0KPj4gKyAqIDdBMjAwMCwgMksyMDAwLCAySzEwMDAgZXRj
Lg0KPj4gKyAqLw0KPj4gKw0KPj4gKy8qIExTN0ExMDAwICovDQo+PiArDQo+PiArI2RlZmluZSBM
UzdBMTAwMF9QSVhQTEwwX1JFR8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMHgwNEIwDQo+PiArI2Rl
ZmluZSBMUzdBMTAwMF9QSVhQTEwxX1JFR8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMHgwNEMwDQo+
PiArDQo+PiArLyogVGhlIERDLCBHUFUsIEdyYXBoaWMgTWVtb3J5IENvbnRyb2xsZXIgc2hhcmUg
dGhlIHNpbmdsZSBnZnhwbGwgKi8NCj4+ICsjZGVmaW5lIExTN0ExMDAwX1BMTF9HRlhfUkVHwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCAweDA0OTANCj4+ICsNCj4+ICsjZGVmaW5lIExTN0ExMDAwX0NP
TkZfUkVHX0JBU0XCoMKgwqDCoMKgwqDCoMKgwqAgMHgxMDAxMDAwMA0KPj4gKw0KPj4gKy8qIExT
N0EyMDAwICovDQo+PiArDQo+PiArI2RlZmluZSBMUzdBMjAwMF9QSVhQTEwwX1JFR8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgMHgwNEIwDQo+PiArI2RlZmluZSBMUzdBMjAwMF9QSVhQTEwxX1JFR8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgMHgwNEMwDQo+PiArDQo+PiArLyogVGhlIERDLCBHUFUsIEdy
YXBoaWMgTWVtb3J5IENvbnRyb2xsZXIgc2hhcmUgdGhlIHNpbmdsZSBnZnhwbGwgKi8NCj4+ICsj
ZGVmaW5lIExTN0EyMDAwX1BMTF9HRlhfUkVHwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAweDA0OTAN
Cj4+ICsNCj4+ICsjZGVmaW5lIExTN0EyMDAwX0NPTkZfUkVHX0JBU0XCoMKgwqDCoMKgwqDCoMKg
wqAgMHgxMDAxMDAwMA0KPj4gKw0KPj4gKy8qIEZvciBMU0RDX0NSVEN4X0NGR19SRUcgKi8NCj4+
ICsjZGVmaW5lIENGR19QSVhfRk1UX01BU0vCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
R0VOTUFTSygyLCAwKQ0KPj4gKw0KPj4gK2VudW0gbHNkY19waXhlbF9mb3JtYXQgew0KPj4gK8Kg
wqDCoCBMU0RDX1BGX05PTkUgPSAwLA0KPj4gK8KgwqDCoCBMU0RDX1BGX1hSR0I0NDQgPSAxLMKg
wqDCoCAvKiBbMTIgYml0c10gKi8NCj4+ICvCoMKgwqAgTFNEQ19QRl9YUkdCNTU1ID0gMizCoMKg
wqAgLyogWzE1IGJpdHNdICovDQo+PiArwqDCoMKgIExTRENfUEZfWFJHQjU2NSA9IDMswqDCoMKg
IC8qIFJHQiBbMTYgYml0c10gKi8NCj4+ICvCoMKgwqAgTFNEQ19QRl9YUkdCODg4OCA9IDQswqDC
oCAvKiBYUkdCIFszMiBiaXRzXSAqLw0KPj4gK307DQo+PiArDQo+PiArLyoNCj4+ICsgKiBFYWNo
IGNydGMgaGFzIHR3byBzZXQgZmIgYWRkcmVzcyByZWdpc3RlcnMgdXNhYmxlLCANCj4+IEZCX1JF
R19JTl9VU0lORyBiaXQgb2YNCj4+ICsgKiBMU0RDX0NSVEN4X0NGR19SRUcgaW5kaWNhdGUgd2hp
Y2ggZmIgYWRkcmVzcyByZWdpc3RlciBpcyBpbiB1c2luZyANCj4+IGJ5IHRoZQ0KPj4gKyAqIENS
VEMgY3VycmVudGx5LiBDRkdfUEFHRV9GTElQIGlzIHVzZWQgdG8gdHJpZ2dlciB0aGUgc3dpdGNo
LCB0aGUgDQo+PiBzd2l0Y2hpbmcNCj4+ICsgKiB3aWxsIGJlIGZpbmlzaGVkIGF0IHRoZSB2ZXJ5
IG5leHQgdmJsYW5rLiBUcmlnZ2VyIGl0IGFnYWluIGlmIHlvdSANCj4+IHdhbnQgdG8NCj4+ICsg
KiBzd2l0Y2ggYmFjay4NCj4+ICsgKg0KPj4gKyAqIElmIEZCMF9BRERSX1JFRyBpcyBpbiB1c2lu
Zywgd2Ugd3JpdGUgdGhlIGFkZHJlc3MgdG8gRkIwX0FERFJfUkVHLA0KPj4gKyAqIGlmIEZCMV9B
RERSX1JFRyBpcyBpbiB1c2luZywgd2Ugd3JpdGUgdGhlIGFkZHJlc3MgdG8gRkIxX0FERFJfUkVH
Lg0KPj4gKyAqLw0KPj4gKyNkZWZpbmUgQ0ZHX1BBR0VfRkxJUMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBCSVQoNykNCj4+ICsjZGVmaW5lIENGR19PVVRQVVRfRU5BQkxFwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBCSVQoOCkNCj4+ICsjZGVmaW5lIENGR19IV19DTE9O
RcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIEJJVCg5KQ0KPj4gKy8qIElu
ZGljYXRlIHdpdGNoIGZiIGFkZHIgcmVnIGlzIGluIHVzaW5nLCBjdXJyZW50bHkuIHJlYWQgb25s
eSAqLw0KPj4gKyNkZWZpbmUgRkJfUkVHX0lOX1VTSU5HwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgQklUKDExKQ0KPj4gKyNkZWZpbmUgQ0ZHX0dBTU1BX0VOwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgQklUKDEyKQ0KPj4gKw0KPj4gKy8qIFRoZSBEQyBnZXQg
c29mdCByZXNldCBpZiB0aGlzIGJpdCBjaGFuZ2VkIGZyb20gIjEiIHRvICIwIiwgYWN0aXZlIA0K
Pj4gbG93ICovDQo+PiArI2RlZmluZSBDRkdfUkVTRVRfTsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgQklUKDIwKQ0KPj4gKy8qIElmIHRoaXMgYml0IGlzIHNldCwgaXQg
c2F5IHRoYXQgdGhlIENSVEMgc3RvcCB3b3JraW5nIGFueW1vcmUsIA0KPj4gYW5jaG9yZWQuICov
DQo+PiArI2RlZmluZSBDUlRDX0FOQ0hPUkVEwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIEJJVCgyNCkNCj4+ICsNCj4+ICsvKg0KPj4gKyAqIFRoZSBETUEgc3RlcCBvZiB0aGUg
REMgaW4gTFM3QTIwMDAvTFMySzIwMDAgaXMgY29uZmlndXJhYmxlLA0KPj4gKyAqIHNldHRpbmcg
dGhvc2UgYml0cyBvbiBsczdhMTAwMCBwbGF0Zm9ybSBtYWtlIG5vIGVmZmVjdC4NCj4+ICsgKi8N
Cj4+ICsjZGVmaW5lIENGR19ETUFfU1RFUF9NQVNLwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
R0VOTUFTSygxNywgMTYpDQo+PiArI2RlZmluZSBDRkdfRE1BX1NURVBfU0hJRlTCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgMTYNCj4+ICtlbnVtIGxzZGNfZG1hX3N0ZXBzIHsNCj4+ICvCoMKgwqAg
TFNEQ19ETUFfU1RFUF8yNTZfQllURVMgPSAwLA0KPj4gK8KgwqDCoCBMU0RDX0RNQV9TVEVQXzEy
OF9CWVRFUyA9IDEsDQo+PiArwqDCoMKgIExTRENfRE1BX1NURVBfNjRfQllURVMgPSAyLA0KPj4g
K8KgwqDCoCBMU0RDX0RNQV9TVEVQXzMyX0JZVEVTID0gMywNCj4+ICt9Ow0KPj4gKw0KPj4gKyNk
ZWZpbmUgQ0ZHX1ZBTElEX0JJVFNfTUFTS8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBHRU5NQVNL
KDIwLCAwKQ0KPj4gKw0KPj4gKy8qIEZvciBMU0RDX0NSVEN4X1BBTkVMX0NPTkZfUkVHICovDQo+
PiArI2RlZmluZSBQSFlfQ0xPQ0tfUE9MwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIEJJVCg5KQ0KPj4gKyNkZWZpbmUgUEhZX0NMT0NLX0VOwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgQklUKDgpDQo+PiArI2RlZmluZSBQSFlfREVfUE9MwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIEJJVCgxKQ0KPj4gKyNkZWZpbmUgUEhZ
X0RBVEFfRU7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIEJJVCgwKQ0K
Pj4gKw0KPj4gKy8qIEZvciBMU0RDX0NSVEN4X0hTWU5DX1JFRyAqLw0KPj4gKyNkZWZpbmUgSFNZ
TkNfSU5WwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgQklUKDMx
KQ0KPj4gKyNkZWZpbmUgSFNZTkNfRU7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIEJJVCgzMCkNCj4+ICsjZGVmaW5lIEhTWU5DX0VORF9NQVNLwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBHRU5NQVNLKDI4LCAxNikNCj4+ICsjZGVmaW5lIEhT
WU5DX0VORF9TSElGVMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDE2DQo+PiArI2Rl
ZmluZSBIU1lOQ19TVEFSVF9NQVNLwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIEdFTk1B
U0soMTIsIDApDQo+PiArI2RlZmluZSBIU1lOQ19TVEFSVF9TSElGVMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgMA0KPj4gKw0KPj4gKy8qIEZvciBMU0RDX0NSVEN4X1ZTWU5DX1JFRyAqLw0K
Pj4gKyNkZWZpbmUgVlNZTkNfSU5WwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgQklUKDMxKQ0KPj4gKyNkZWZpbmUgVlNZTkNfRU7CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIEJJVCgzMCkNCj4+ICsjZGVmaW5lIFZTWU5DX0VO
RF9NQVNLwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBHRU5NQVNLKDI3LCAxNikN
Cj4+ICsjZGVmaW5lIFZTWU5DX0VORF9TSElGVMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIDE2DQo+PiArI2RlZmluZSBWU1lOQ19TVEFSVF9NQVNLwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIEdFTk1BU0soMTEsIDApDQo+PiArI2RlZmluZSBWU1lOQ19TVEFSVF9TSElGVMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMA0KPj4gKw0KPj4gKy8qKioqKioqKioqKiBDUlRD
MCAmIERJU1BMQVkgUElQRTAgKioqKioqKioqKiovDQo+PiArI2RlZmluZSBMU0RDX0NSVEMwX0NG
R19SRUfCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAweDEyNDANCj4+ICsjZGVmaW5lIExTRENf
Q1JUQzBfRkIwX0FERFJfTE9fUkVHwqDCoMKgwqDCoCAweDEyNjANCj4+ICsjZGVmaW5lIExTRENf
Q1JUQzBfRkIwX0FERFJfSElfUkVHwqDCoMKgwqDCoCAweDE1QTANCj4+ICsjZGVmaW5lIExTRENf
Q1JUQzBfU1RSSURFX1JFR8KgwqDCoMKgwqDCoMKgwqDCoMKgIDB4MTI4MA0KPj4gKyNkZWZpbmUg
TFNEQ19DUlRDMF9GQl9PUklHSU5fUkVHwqDCoMKgwqDCoMKgwqAgMHgxMzAwDQo+PiArI2RlZmlu
ZSBMU0RDX0NSVEMwX1BBTkVMX0NPTkZfUkVHwqDCoMKgwqDCoMKgIDB4MTNDMA0KPj4gKyNkZWZp
bmUgTFNEQ19DUlRDMF9IRElTUExBWV9SRUfCoMKgwqDCoMKgwqDCoMKgIDB4MTQwMA0KPj4gKyNk
ZWZpbmUgTFNEQ19DUlRDMF9IU1lOQ19SRUfCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDB4MTQyMA0K
Pj4gKyNkZWZpbmUgTFNEQ19DUlRDMF9WRElTUExBWV9SRUfCoMKgwqDCoMKgwqDCoMKgIDB4MTQ4
MA0KPj4gKyNkZWZpbmUgTFNEQ19DUlRDMF9WU1lOQ19SRUfCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IDB4MTRBMA0KPj4gKyNkZWZpbmUgTFNEQ19DUlRDMF9HQU1NQV9JTkRFWF9SRUfCoMKgwqDCoMKg
IDB4MTRFMA0KPj4gKyNkZWZpbmUgTFNEQ19DUlRDMF9HQU1NQV9EQVRBX1JFR8KgwqDCoMKgwqDC
oCAweDE1MDANCj4+ICsjZGVmaW5lIExTRENfQ1JUQzBfRkIxX0FERFJfTE9fUkVHwqDCoMKgwqDC
oCAweDE1ODANCj4+ICsjZGVmaW5lIExTRENfQ1JUQzBfRkIxX0FERFJfSElfUkVHwqDCoMKgwqDC
oCAweDE1QzANCj4+ICsNCj4+ICsvKioqKioqKioqKiogQ1RSQzEgJiBESVNQTEFZIFBJUEUxICoq
KioqKioqKioqLw0KPg0KPiAiQ1JUQzEiDQoNCkluZGVlZCwgdGhhbmtzIGZvciB5b3VyIHNoYXJw
ZW4gZXllcy4NCg0KSSB3aWxsIHRyeSB0byBzb2x2ZSBhbGwgb3RoZXIgcHJvYmxlbXMgeW91IG1l
bnRpb25lZCBhdCBuZXh0IHZlcnNpb24uDQoNCkkgZG9uJ3Qgbm90aWNlIHRoaXMuDQoNCkdyZWF0
IHRoYW5rcy4NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5h
cm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2
ZUBsaXN0cy5saW5hcm8ub3JnCg==
