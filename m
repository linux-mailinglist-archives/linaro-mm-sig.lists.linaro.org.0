Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C98186DDA93
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 11 Apr 2023 14:16:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8956C3E975
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 11 Apr 2023 12:16:15 +0000 (UTC)
Received: from 189.cn (ptr.189.cn [183.61.185.101])
	by lists.linaro.org (Postfix) with ESMTP id 6F7863E975
	for <linaro-mm-sig@lists.linaro.org>; Tue, 11 Apr 2023 12:15:56 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of 15330273260@189.cn designates 183.61.185.101 as permitted sender) smtp.mailfrom=15330273260@189.cn;
	dmarc=none
HMM_SOURCE_IP: 10.64.8.41:43318.1095697603
HMM_ATTACHE_NUM: 0000
HMM_SOURCE_TYPE: SMTP
Received: from clientip-114.242.206.180 (unknown [10.64.8.41])
	by 189.cn (HERMES) with SMTP id 7164810020E;
	Tue, 11 Apr 2023 20:15:51 +0800 (CST)
Received: from  ([114.242.206.180])
	by gateway-151646-dep-7b48884fd-ljp89 with ESMTP id c863400433aa4172ade34a0a231e4e5e for emil.l.velikov@gmail.com;
	Tue, 11 Apr 2023 20:15:53 CST
X-Transaction-ID: c863400433aa4172ade34a0a231e4e5e
X-Real-From: 15330273260@189.cn
X-Receive-IP: 114.242.206.180
X-MEDUSA-Status: 0
Sender: 15330273260@189.cn
Message-ID: <ee115204-880e-f1c1-a9d3-0ad0875f748e@189.cn>
Date: Tue, 11 Apr 2023 20:15:50 +0800
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
X-Rspamd-Queue-Id: 6F7863E975
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.70 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:183.61.185.0/24];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-0.912];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	R_DKIM_NA(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,lists.linaro.org,loongson.cn,vger.kernel.org,lists.freedesktop.org,lists.loongnix.cn];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:4134, ipnet:183.0.0.0/10, country:CN];
	FREEMAIL_ENVFROM(0.00)[189.cn];
	RCPT_COUNT_TWELVE(0.00)[15];
	RCVD_IN_DNSWL_FAIL(0.00)[183.61.185.101:server fail,114.242.206.180:server fail];
	URIBL_BLOCKED(0.00)[189.cn:helo];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[];
	FREEMAIL_FROM(0.00)[189.cn];
	DMARC_NA(0.00)[189.cn];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: 6Z46QIFQ7LV2Y7R324GSPQAVBR22MK66
X-Message-ID-Hash: 6Z46QIFQ7LV2Y7R324GSPQAVBR22MK66
X-MailFrom: 15330273260@189.cn
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter <daniel@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Christian Koenig <christian.koenig@amd.com>, linaro-mm-sig@lists.linaro.org, Li Yi <liyi@loongson.cn>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, nathan@kernel.org, linux-media@vger.kernel.org, loongson-kernel@lists.loongnix.cn
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v10 2/2] drm: add kms driver for loongson display controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/6Z46QIFQ7LV2Y7R324GSPQAVBR22MK66/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

SGksDQoNCk9uIDIwMjMvNC80IDIyOjEwLCBFbWlsIFZlbGlrb3Ygd3JvdGU6DQo+PiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vbG9vbmdzb24vbHNkY19kcnYuaA0KPj4gQEAgLTAsMCArMSwzMjQgQEAN
Cj4+ICsvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMCAqLw0KPj4gKy8qDQo+PiAr
ICogQ29weXJpZ2h0IChDKSAyMDIyIExvb25nc29uIENvcnBvcmF0aW9uDQo+PiArICoNCj4gV2Un
cmUgaW4gMjAyMywgdXBkYXRlIHRoZSB5ZWFyIGFjcm9zcyB0aGUgZmlsZXM/DQo+DQpPSywgaXQg
anVzdCB0aGF0IHdlIHN0YXJ0ZWQgdG8gdXBzdHJlYW0gdGhpcyBkcml2ZXIgc2luY2UgMjAyMi4N
Cj4+ICtzdHJ1Y3QgbHNkY19nZW0gew0KPj4gKyAgICAgICAvKiBAbXV0ZXg6IHByb3RlY3Qgb2Jq
ZWN0cyBsaXN0ICovDQo+PiArICAgICAgIHN0cnVjdCBtdXRleCBtdXRleDsNCj4+ICsgICAgICAg
c3RydWN0IGxpc3RfaGVhZCBvYmplY3RzOw0KPj4gK307DQo+PiArDQo+PiArc3RydWN0IGxzZGNf
ZGV2aWNlIHsNCj4+ICsgICAgICAgc3RydWN0IGRybV9kZXZpY2UgYmFzZTsNCj4+ICsgICAgICAg
c3RydWN0IHR0bV9kZXZpY2UgYmRldjsNCj4+ICsNCj4+ICsgICAgICAgLyogQGRlc2NwOiBmZWF0
dXJlcyBkZXNjcmlwdGlvbiBvZiB0aGUgREMgdmFyaWFudCAqLw0KPj4gKyAgICAgICBjb25zdCBz
dHJ1Y3QgbHNkY19kZXNjICpkZXNjcDsNCj4+ICsNCj4+ICsgICAgICAgc3RydWN0IHBjaV9kZXYg
KmdwdTsNCj4+ICsNCj4+ICsgICAgICAgLyogQHJlZ2xvY2s6IHByb3RlY3RzIGNvbmN1cnJlbnQg
YWNjZXNzICovDQo+PiArICAgICAgIHNwaW5sb2NrX3QgcmVnbG9jazsNCj4+ICsgICAgICAgdm9p
ZCBfX2lvbWVtICpyZWdfYmFzZTsNCj4+ICsgICAgICAgcmVzb3VyY2Vfc2l6ZV90IHZyYW1fYmFz
ZTsNCj4+ICsgICAgICAgcmVzb3VyY2Vfc2l6ZV90IHZyYW1fc2l6ZTsNCj4+ICsNCj4+ICsgICAg
ICAgcmVzb3VyY2Vfc2l6ZV90IGd0dF9zaXplOw0KPj4gKw0KPj4gKyAgICAgICBzdHJ1Y3QgbHNk
Y19kaXNwbGF5X3BpcGUgZGlzcGlwZVtMU0RDX05VTV9DUlRDXTsNCj4+ICsNCj4+ICsgICAgICAg
c3RydWN0IGxzZGNfZ2VtIGdlbTsNCj4+ICsNCj4gTGFzdCB0aW1lIEkgbG9va2VkIHRoZXJlIHdh
cyBubyBvdGhlciBkcml2ZXIgd2l0aCBhIGxpc3Qgb2YgZ2VtDQo+IG9iamVjdHMgKGFuZCBhIG11
dGV4KSBpbiBpdHMgZGV2aWNlIHN0cnVjdC4gQXJlIHlvdSBzdXJlIHdlIG5lZWQgdGhpcz8NCg0K
U3VyZSwgdGhpcyBpcyBhYnNvbHV0ZWx5IG5lY2Vzc2FyeS4NCg0KV2l0aG91dCB0aGlzIEkgY2Fu
J3Qgc2VlIGhvdyBtdWNoIGJ1ZmZlciBvYmplY3QgaGFzIGJlZW4gY3JlYXRlZC4NCg0Kd2hlcmUg
dGhleSBhcmUoU1lFVEVNLCBHVFQgb3IgVlJBTSkgYW5kIGhvdyBtdWNoIHNpemUgaXQgdGhlIGJ1
ZmZlciBpcy4NCg0KV2hlbiBzaGFyaW5nIGJ1ZmZlciB3aXRoIG90aGVyIGRyaXZlcizCoMKgIGNh
dCAvc3lzL2tlcm5lbC9kZWJ1Zy9kcmkvMC9ib3MNCg0KY2FuIGJlIHVzZWQgdG8gc2VlIHRoYXQg
dGhlIHNoYXJlZCBidWZmZXIgaXMgcGlubmVkIGluIHRoZSBHVFQuDQoNCj4gVmVyeSBmZXcgZHJp
dmVycyB1c2UgVFRNIGRpcmVjdGx5IGFuZCBJIHRoaW5rIHlvdSB3YW50IHRvIHVzZQ0KPiBkcm1f
Z2VtX3ZyYW1faGVscGVyIG9yIGRybV9nZW1fdHRtX2hlbHBlciBpbnN0ZWFkLg0KDQpXZSBsb3Zl
IHlvdSByZXZpZXdzLMKgIHlldC4uLg0KDQp5ZXQgdXNpbmcgdGhlIFRUTSBpcyBwcmV0dHkgZ29v
ZC4NCg0KZHJtX2dlbV92cmFtX2hlbHBlciBpcyBhbHNvIGdvb2QgZm9yIGJlZ2lubmVycy4NCg0K
V2UgY2FuIGV4cGxpY2l0bHkgc3BlY2lmeSB3aGVyZSB0byBwdXQgdGhlIGJvIHdpdGggVFRNLA0K
DQpXZSBhbHNvIG5lZWQgdGhpcyB0byBpbXBsZW1lbnQgdGhlIFMzIHByb3Blcmx5Lg0KDQpUaG9t
YXMgYWxzbyByZWNvbW1lbmQgdXMgc3dpdGNoIHRvIFRUTS4NCg0KPj4gK3N0YXRpYyBpbnQgbHM3
YTEwMDBfcGl4cGxsX3BhcmFtX3VwZGF0ZShzdHJ1Y3QgbHNkY19wbGwgKiBjb25zdCB0aGlzLA0K
Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBsc2RjX3Bs
bF9wYXJtcyBjb25zdCAqcGluKQ0KPj4gK3sNCj4+ICsgICAgICAgdm9pZCBfX2lvbWVtICpyZWcg
PSB0aGlzLT5tbWlvOw0KPj4gKyAgICAgICB1bnNpZ25lZCBpbnQgY291bnRlciA9IDA7DQo+PiAr
ICAgICAgIGJvb2wgbG9ja2VkOw0KPj4gKyAgICAgICB1MzIgdmFsOw0KPj4gKw0KPj4gKyAgICAg
ICAvKiBCeXBhc3MgdGhlIHNvZnR3YXJlIGNvbmZpZ3VyZWQgUExMLCB1c2luZyByZWZjbGsgZGly
ZWN0bHkgKi8NCj4+ICsgICAgICAgdmFsID0gcmVhZGwocmVnICsgMHg0KTsNCj4+ICsgICAgICAg
dmFsICY9IH4oMSA8PCA4KTsNCj4+ICsgICAgICAgd3JpdGVsKHZhbCwgcmVnICsgMHg0KTsNCj4+
ICsNCj4gVGhlcmUgYXJlIGEgbG90IG9mIG1hZ2ljIG51bWJlcnMgaW4gdGhpcyBmdW5jdGlvbi4g
TGV0J3MgZGVmaW5lIHRoZW0NCj4gcHJvcGVybHkgaW4gdGhlIGhlYWRlci4NCj4NCk9rLCBJwqAg
d2lsbCBpbXByb3ZlIHRoaXMgZnVuY3Rpb24gYXQgdGhlIG5leHQgdmVyc2lvbi4NCj4+ICsvKiBI
ZWxwZXJzIGZvciBjaGlwIGRldGVjdGlvbiAqLw0KPj4gK2Jvb2wgbHNkY19pc19sczJrMjAwMCh2
b2lkKTsNCj4+ICtib29sIGxzZGNfaXNfbHMyazEwMDAodm9pZCk7DQo+PiArdW5zaWduZWQgaW50
IGxvb25nc29uX2NwdV9nZXRfcHJpZCh1OCAqaW1wbCwgdTggKnJldik7DQo+IFNpbmNlIHRoaXMg
cmV2aXNpb24gZG9lcyBwY2lfZGV2aWNlcyBvbmx5LCB3ZSBkb24ndCBuZWVkIHRoaXMgZGV0ZWN0
aW9uIHJpZ2h0Pw0KDQpObywgd2UgbmVlZCBpdC4NCg0KSW4gb3JkZXIgdG8gZ2V0IGEgZmluZSBj
b250cm9sLCB3ZSBuZWVkIHRvIGtub3cgd2hhdCB0aGUgaG9zdCBpcy4NCg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
