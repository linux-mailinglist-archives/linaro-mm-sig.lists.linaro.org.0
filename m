Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 579C56DD1DE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 11 Apr 2023 07:39:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2CDA53F03B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 11 Apr 2023 05:39:26 +0000 (UTC)
Received: from 189.cn (ptr.189.cn [183.61.185.101])
	by lists.linaro.org (Postfix) with ESMTP id 246753EBA5
	for <linaro-mm-sig@lists.linaro.org>; Tue, 11 Apr 2023 05:39:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of 15330273260@189.cn designates 183.61.185.101 as permitted sender) smtp.mailfrom=15330273260@189.cn;
	dmarc=none
HMM_SOURCE_IP: 10.64.8.43:59606.589911955
HMM_ATTACHE_NUM: 0000
HMM_SOURCE_TYPE: SMTP
Received: from clientip-114.242.206.180 (unknown [10.64.8.43])
	by 189.cn (HERMES) with SMTP id 6BC8C1002F6;
	Tue, 11 Apr 2023 13:39:08 +0800 (CST)
Received: from  ([114.242.206.180])
	by gateway-151646-dep-7b48884fd-tj646 with ESMTP id f7efde40c6bc459b9f649b6547f1e147 for emil.l.velikov@gmail.com;
	Tue, 11 Apr 2023 13:39:11 CST
X-Transaction-ID: f7efde40c6bc459b9f649b6547f1e147
X-Real-From: 15330273260@189.cn
X-Receive-IP: 114.242.206.180
X-MEDUSA-Status: 0
Sender: 15330273260@189.cn
Message-ID: <c29da6cf-98be-42fc-c415-28732f6b6b1f@189.cn>
Date: Tue, 11 Apr 2023 13:39:07 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: Emil Velikov <emil.l.velikov@gmail.com>
References: <20230403171304.2157326-1-suijingfeng@loongson.cn>
 <20230403171304.2157326-3-suijingfeng@loongson.cn>
 <CACvgo53h+X26wngVmxpn3oVb9kbJezTHx61p3rZDR7sw1AQrWQ@mail.gmail.com>
From: Sui Jingfeng <15330273260@189.cn>
In-Reply-To: <CACvgo53h+X26wngVmxpn3oVb9kbJezTHx61p3rZDR7sw1AQrWQ@mail.gmail.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 246753EBA5
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.70 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:183.61.185.0/24];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_NO_TLS_LAST(0.10)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	R_DKIM_NA(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,lists.linaro.org,loongson.cn,vger.kernel.org,lists.freedesktop.org,lists.loongnix.cn];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:4134, ipnet:183.0.0.0/10, country:CN];
	FREEMAIL_ENVFROM(0.00)[189.cn];
	NEURAL_HAM(-0.00)[-0.872];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DMARC_NA(0.00)[189.cn];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[189.cn];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: IXFHHPZSGHFIRGMFTMWHKV3Q2YATSDYH
X-Message-ID-Hash: IXFHHPZSGHFIRGMFTMWHKV3Q2YATSDYH
X-MailFrom: 15330273260@189.cn
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian Koenig <christian.koenig@amd.com>, linaro-mm-sig@lists.linaro.org, Li Yi <liyi@loongson.cn>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, nathan@kernel.org, linux-media@vger.kernel.org, loongson-kernel@lists.loongnix.cn
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v10 2/2] drm: add kms driver for loongson display controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IXFHHPZSGHFIRGMFTMWHKV3Q2YATSDYH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGksDQoNCk9uIDIwMjMvNC80IDIyOjEwLCBFbWlsIFZlbGlrb3Ygd3JvdGU6DQo+PiArc3RhdGlj
IHZvaWQgbHNkY19jcnRjX3Jlc2V0KHN0cnVjdCBkcm1fY3J0YyAqY3J0YykNCj4+ICt7DQo+PiAr
ICAgICAgIHN0cnVjdCBsc2RjX2Rpc3BsYXlfcGlwZSAqZGlzcGlwZSA9IGNydGNfdG9fZGlzcGxh
eV9waXBlKGNydGMpOw0KPj4gKyAgICAgICBzdHJ1Y3QgZHJtX2RldmljZSAqZGRldiA9IGNydGMt
PmRldjsNCj4+ICsgICAgICAgc3RydWN0IGxzZGNfZGV2aWNlICpsZGV2ID0gdG9fbHNkYyhkZGV2
KTsNCj4+ICsgICAgICAgc3RydWN0IGxzZGNfY3J0Y19zdGF0ZSAqcHJpdl9jcnRjX3N0YXRlOw0K
Pj4gKyAgICAgICB1bnNpZ25lZCBpbnQgaW5kZXggPSBkaXNwaXBlLT5pbmRleDsNCj4+ICsgICAg
ICAgdTMyIHZhbDsNCj4+ICsNCj4+ICsgICAgICAgdmFsID0gTFNEQ19QRl9YUkdCODg4OCB8IENG
R19SRVNFVF9OOw0KPj4gKyAgICAgICBpZiAobGRldi0+ZGVzY3AtPmNoaXAgPT0gQ0hJUF9MUzdB
MjAwMCkNCj4+ICsgICAgICAgICAgICAgICB2YWwgfD0gTFNEQ19ETUFfU1RFUF82NF9CWVRFUzsN
Cj4+ICsNCj4+ICsgICAgICAgbHNkY19jcnRjX3dyZWczMihsZGV2LCBMU0RDX0NSVEMwX0NGR19S
RUcsIGluZGV4LCB2YWwpOw0KPj4gKw0KPj4gKyAgICAgICBpZiAobGRldi0+ZGVzY3AtPmNoaXAg
PT0gQ0hJUF9MUzdBMjAwMCkgew0KPj4gKyAgICAgICAgICAgICAgIHZhbCA9IFBIWV9DTE9DS19F
TiB8IFBIWV9EQVRBX0VOOw0KPj4gKyAgICAgICAgICAgICAgIGxzZGNfY3J0Y193cmVnMzIobGRl
diwgTFNEQ19DUlRDMF9QQU5FTF9DT05GX1JFRywgaW5kZXgsIHZhbCk7DQo+PiArICAgICAgIH0N
Cj4+ICsNCj4gQUZBSUNUIG5vIG90aGVyIGRyaXZlciB0b3VjaGVzIHRoZSBIVyBpbiB0aGVpciBy
ZXNldCBjYWxsYmFjay4gU2hvdWxkDQo+IHRoZSBhYm92ZSBiZSBtb3ZlZCB0byBhbm90aGVyIGNh
bGxiYWNrPw0KPg0KWW91IG1heSBjb3JyZWN0IGluIHRoZSA5NSUgb2YgYWxsIGNhc2VzLg0KDQpB
ZnRlciByZWFkaW5nIHRoZSBjb21tZW50cyBvZiB0aGUgcmVzZXQgY2FsbGJhY2sgb2Ygc3RydWN0
IA0KZHJtX2NydGNfZnVuY3MgaW4gZHJtX2NydGMuaCwNCg0KSXQgc2VlbXMgdGhhdCBpdCBkb2Vz
IG5vdCBwcm9oaWJpdCB1cyB0byB0b3VjaGVzIHRoZSBoYXJkd2FyZS4NCg0KSSBjb3B5IHRoYXQg
Y29tbWVudHMgYW5kIHBhc3RlIGludG8gaGVyZSBmb3IgZWFzaWVyIHRvIHJlYWQsYXMgYmVsb3c6
DQoNCg0KIMKgwqDCoCAvKg0KIMKgwqAgwqAgKiBAcmVzZXQ6DQogwqDCoCDCoCAqDQogwqDCoCDC
oCAqIFJlc2V0IENSVEMgaGFyZHdhcmUgYW5kIHNvZnR3YXJlIHN0YXRlIHRvIG9mZi4gVGhpcyBm
dW5jdGlvbiBpc24ndA0KIMKgwqAgwqAgKiBjYWxsZWQgYnkgdGhlIGNvcmUgZGlyZWN0bHksIG9u
bHkgdGhyb3VnaCBkcm1fbW9kZV9jb25maWdfcmVzZXQoKS4NCiDCoMKgIMKgICogSXQncyBub3Qg
YSBoZWxwZXIgaG9vayBvbmx5IGZvciBoaXN0b3JpY2FsIHJlYXNvbnMuDQogwqDCoCDCoCAqDQog
wqDCoCDCoCAqIEF0b21pYyBkcml2ZXJzIGNhbiB1c2UgZHJtX2F0b21pY19oZWxwZXJfY3J0Y19y
ZXNldCgpIHRvIHJlc2V0DQogwqDCoCDCoCAqIGF0b21pYyBzdGF0ZSB1c2luZyB0aGlzIGhvb2su
DQogwqDCoCDCoCAqLw0KDQoNCkl0IHNlZW0gYWxsb3dhYmxlIHRvIHJlc2V0IENSVEMgaGFyZHdh
cmUgaW4gdGhpcyBjYWxsYmFjaywgZGlkIGl0IGN1ZSB1cz8NCg0KV2hhdCB3ZSBrbm93IGlzIHRo
YXQgdGhpcyByZXNldCBjYWxsYmFjayAoYW5kIG90aGVycywgc3VjaCBhcyBlbmNvZGVyJ3MgDQpy
ZXNldCkNCg0KaXMgY2FsbGVkIGJ5IGRybV9tb2RlX2NvbmZpZ19yZXNldCgpLiBJdCBpcyB0aGUg
Zmlyc3Qgc2V0IG9mIGZ1bmN0aW9ucyANCmdldCBjYWxsZWQNCg0KYmVmb3JlIG90aGVyIGhhcmR3
YXJlIHJlbGF0ZWQgY2FsbGJhY2tzLg0KDQoNCkkgZG9uJ3Qgbm90IHNlZSBob3cgb3RoZXIgZHJp
dmVycyBpbXBsZW1lbnQgdGhpcyBjYWxsYmFjaywgYWZ0ZXIgeW91IA0KbWVudGlvbiB0aGlzDQoN
Ckkgc2tpbSBvdmVyIGEgZmV3LCBJIGZvdW5kIHRpbGNkYyBhbHNvIHdyaXRpbmcgdGhlIGhhcmR3
YXJlIGluIHRoZWlyIA0KdGlsY2RjX2NydGNfcmVzZXQoKQ0KDQpmdW5jdGlvbi4gU2VlIGl0IGlu
IGRybS90aWxkYy90aWxjbGNfY3J0Yy5jDQoNCg0KSW4gYWRkaXRpb24sIExvb25nc29uIHBsYXRm
b3JtIHN1cHBvcnQgZWZpZmIswqAgaW4gb3JkZXIgdG8gbGlnaHQgdXAgdGhlIA0KbW9uaXRvciBp
bg0KDQpmaXJtd2FyZSBzdGFnZSBhbmQgdGhlIGJvb3Rpbmcgc3RhZ2UsIHRoZSBmaXJtd2FyZSB0
b3VjaCB0aGUgZGlzcGxheSANCmhhcmR3YXJlDQoNCnJlZ2lzdGVyIGRpcmVjdGx5LiBBZnRlciBl
ZmlmYiBnZXQga2ljayBvdXQsIHdoZW4gZHJtL2xvb25nc29uIGRyaXZlciANCnRha2VuIG92ZXIg
dGhlDQoNCmhhcmR3YXJlLCB0aGUgcmVnaXN0ZXIgc2V0dGluZyBzdGF0ZSBzdGlsbCByZW1haW4g
aW4gdGhlIGhhcmR3YXJlIA0KcmVnaXN0ZXIuIFRob3NlDQoNCnJlZ2lzdGVyIHNldHRpbmcgbWF5
IG5vIGxvbmdlciBjb3JyZWN0IGZvciB0aGUgc3Vic2VxdWVudCBvcGVyYXRpb25kLiANCldoYXQg
d2UNCg0KZG9pbmcgaGVyZSBpcyB0byBnaXZpbmcgdGhlIGhhcmR3YXJlIGEgYmFzaWMgaGVhbHRo
eSBzdGF0ZSBwcmVwYXJlIHRvIGJlIA0KdXBkYXRlDQoNCmZ1cnRoZXIuIEFzIHRoZSByZXNldCBj
YWxsYmFjayBpcyBjYWxsIHZlcnkgZWFybHksIHdlIGZvdW5kIHRoYXQgaXQncyANCnRoZSBiZXN0
IGZpdC4NCg0KVGhlIHJlc2V0IHdpbGwgYWxzbyBnZXQgY2FsbGVkIHdoZW4gcmVzdW1lKFMzKS4N
Cg0KDQpUaGUgcHJvYmxlbSBpcyB0aGF0IHdlIGRvbid0IGZpbmQgYSBnb29kIHRvIHBsYWNlIHRv
IG1vdmUgdGhvc2Ugc2V0dGluZyANCmN1cnJlbnRseS4NCg0KX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0g
bGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1h
aWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
