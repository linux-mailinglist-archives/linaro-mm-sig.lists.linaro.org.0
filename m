Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 67EE16C42FE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Mar 2023 07:21:12 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6A1C43F473
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 Mar 2023 06:21:11 +0000 (UTC)
Received: from loongson.cn (mail.loongson.cn [114.242.206.163])
	by lists.linaro.org (Postfix) with ESMTP id F22163E8AA
	for <linaro-mm-sig@lists.linaro.org>; Fri, 17 Mar 2023 02:19:12 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=none;
	spf=pass (lists.linaro.org: domain of suijingfeng@loongson.cn designates 114.242.206.163 as permitted sender) smtp.mailfrom=suijingfeng@loongson.cn;
	dmarc=none
Received: from loongson.cn (unknown [10.20.42.133])
	by gateway (Coremail) with SMTP id _____8AxJAwfzhNkaDINAA--.18934S3;
	Fri, 17 Mar 2023 10:19:11 +0800 (CST)
Received: from [10.20.42.133] (unknown [10.20.42.133])
	by localhost.localdomain (Coremail) with SMTP id AQAAf8BxoOQXzhNk8BADAA--.14729S3;
	Fri, 17 Mar 2023 10:19:03 +0800 (CST)
Message-ID: <d8c7df2e-b170-7287-437a-b70778c43a3d@loongson.cn>
Date: Fri, 17 Mar 2023 10:19:03 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
To: kernel test robot <lkp@intel.com>, Sui Jingfeng <15330273260@189.cn>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Christian Koenig <christian.koenig@amd.com>
References: <20230315211550.2620818-3-15330273260@189.cn>
 <202303161727.8HnBf6cW-lkp@intel.com>
Content-Language: en-US
From: Sui jingfeng <suijingfeng@loongson.cn>
In-Reply-To: <202303161727.8HnBf6cW-lkp@intel.com>
X-CM-TRANSID: AQAAf8BxoOQXzhNk8BADAA--.14729S3
X-CM-SenderInfo: xvxlyxpqjiv03j6o00pqjv00gofq/
X-Coremail-Antispam: 1Uk129KBjvJXoWxWw4DAFWkZw1UKF4rJr13Jwb_yoWrWryxpa
	1Yka9xKrW8Xr48GaykGa97Ca4aqan5X34UXryUGw15Z3ZFvFWqgr1I9FWY9rsrKFn7KFW2
	yrZ3uF1kWFnrZaDanT9S1TB71UUUUbUqnTZGkaVYY2UrUUUUj1kv1TuYvTs0mT0YCTnIWj
	qI5I8CrVACY4xI64kE6c02F40Ex7xfYxn0WfASr-VFAUDa7-sFnT9fnUUIcSsGvfJTRUUU
	bqxYFVCjjxCrM7AC8VAFwI0_Jr0_Gr1l1xkIjI8I6I8E6xAIw20EY4v20xvaj40_Wr0E3s
	1l1IIY67AEw4v_Jrv_JF1l8cAvFVAK0II2c7xJM28CjxkF64kEwVA0rcxSw2x7M28EF7xv
	wVC0I7IYx2IY67AKxVW5JVW7JwA2z4x0Y4vE2Ix0cI8IcVCY1x0267AKxVW8JVWxJwA2z4
	x0Y4vEx4A2jsIE14v26r4UJVWxJr1l84ACjcxK6I8E87Iv6xkF7I0E14v26r4UJVWxJr1l
	n4kS14v26r126r1DM2AIxVAIcxkEcVAq07x20xvEncxIr21l57IF6xkI12xvs2x26I8E6x
	ACxx1l5I8CrVACY4xI64kE6c02F40Ex7xfMcIj6xIIjxv20xvE14v26r1q6rW5McIj6I8E
	87Iv67AKxVWUJVW8JwAm72CE4IkC6x0Yz7v_Jr0_Gr1lF7xvr2IY64vIr41lc7I2V7IY0V
	AS07AlzVAYIcxG8wCY1x0262kKe7AKxVWUAVWUtwCF04k20xvY0x0EwIxGrwCFx2IqxVCF
	s4IE7xkEbVWUJVW8JwCFI7km07C267AKxVWUAVWUtwC20s026c02F40E14v26r1j6r18MI
	8I3I0E7480Y4vE14v26r106r1rMI8E67AF67kF1VAFwI0_Jw0_GFylIxkGc2Ij64vIr41l
	IxAIcVC0I7IYx2IY67AKxVWUCVW8JwCI42IY6xIIjxv20xvEc7CjxVAFwI0_Jr0_Gr1lIx
	AIcVCF04k26cxKx2IYs7xG6r1j6r1xMIIF0xvEx4A2jsIE14v26r1j6r4UMIIF0xvEx4A2
	jsIEc7CjxVAFwI0_Jr0_GrUvcSsGvfC2KfnxnUUI43ZEXa7IU8v_M3UUUUU==
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: F22163E8AA
X-Spamd-Bar: -------
X-Spamd-Result: default: False [-7.20 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	R_SPF_ALLOW(-0.20)[+ip4:114.242.206.163];
	RCVD_NO_TLS_LAST(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	FROM_EQ_ENVFROM(0.00)[];
	R_DKIM_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[intel.com,189.cn,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com];
	ASN(0.00)[asn:4808, ipnet:114.242.192.0/18, country:CN];
	RCPT_COUNT_TWELVE(0.00)[15];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_SPAM(0.00)[0.623];
	DMARC_NA(0.00)[loongson.cn];
	ARC_NA(0.00)[]
X-MailFrom: suijingfeng@loongson.cn
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: VKUTWJYXN36FKP5NEP276DG76NBN6NY7
X-Message-ID-Hash: VKUTWJYXN36FKP5NEP276DG76NBN6NY7
X-Mailman-Approved-At: Wed, 22 Mar 2023 06:20:18 +0000
CC: oe-kbuild-all@lists.linux.dev, linaro-mm-sig@lists.linaro.org, Li Yi <liyi@loongson.cn>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 2/2] drm: add kms driver for loongson display controller
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/VKUTWJYXN36FKP5NEP276DG76NBN6NY7/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

DQpPbiAyMDIzLzMvMTYgMTc6NTMsIGtlcm5lbCB0ZXN0IHJvYm90IHdyb3RlOg0KPiBIaSBTdWks
DQo+DQo+IEkgbG92ZSB5b3VyIHBhdGNoISBQZXJoYXBzIHNvbWV0aGluZyB0byBpbXByb3ZlOg0K
Pg0KPiBbYXV0byBidWlsZCB0ZXN0IFdBUk5JTkcgb24gZHJtLW1pc2MvZHJtLW1pc2MtbmV4dF0N
Cj4gW2Fsc28gYnVpbGQgdGVzdCBXQVJOSU5HIG9uIGxpbnVzL21hc3RlciB2Ni4zLXJjMiBuZXh0
LTIwMjMwMzE2XQ0KPiBbSWYgeW91ciBwYXRjaCBpcyBhcHBsaWVkIHRvIHRoZSB3cm9uZyBnaXQg
dHJlZSwga2luZGx5IGRyb3AgdXMgYSBub3RlLg0KPiBBbmQgd2hlbiBzdWJtaXR0aW5nIHBhdGNo
LCB3ZSBzdWdnZXN0IHRvIHVzZSAnLS1iYXNlJyBhcyBkb2N1bWVudGVkIGluDQo+IGh0dHBzOi8v
Z2l0LXNjbS5jb20vZG9jcy9naXQtZm9ybWF0LXBhdGNoI19iYXNlX3RyZWVfaW5mb3JtYXRpb25d
DQo+DQo+IHVybDogICAgaHR0cHM6Ly9naXRodWIuY29tL2ludGVsLWxhYi1sa3AvbGludXgvY29t
bWl0cy9TdWktSmluZ2ZlbmcvTUFJTlRBSU5FUlMtYWRkLW1haW50YWluZXJzLWZvci1EUk0tTE9P
TkdTT04tZHJpdmVyLzIwMjMwMzE2LTA1MTcyNA0KPiBiYXNlOiAgIGdpdDovL2Fub25naXQuZnJl
ZWRlc2t0b3Aub3JnL2RybS9kcm0tbWlzYyBkcm0tbWlzYy1uZXh0DQo+IHBhdGNoIGxpbms6ICAg
IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyMzAzMTUyMTE1NTAuMjYyMDgxOC0zLTE1MzMw
MjczMjYwJTQwMTg5LmNuDQo+IHBhdGNoIHN1YmplY3Q6IFtQQVRDSCB2NyAyLzJdIGRybTogYWRk
IGttcyBkcml2ZXIgZm9yIGxvb25nc29uIGRpc3BsYXkgY29udHJvbGxlcg0KPiBjb25maWc6IGFy
bS1hbGxtb2Rjb25maWcgKGh0dHBzOi8vZG93bmxvYWQuMDEub3JnLzBkYXktY2kvYXJjaGl2ZS8y
MDIzMDMxNi8yMDIzMDMxNjE3MjcuOEhuQmY2Y1ctbGtwQGludGVsLmNvbS9jb25maWcpDQo+IGNv
bXBpbGVyOiBhcm0tbGludXgtZ251ZWFiaS1nY2MgKEdDQykgMTIuMS4wDQo+IHJlcHJvZHVjZSAo
dGhpcyBpcyBhIFc9MSBidWlsZCk6DQo+ICAgICAgICAgIHdnZXQgaHR0cHM6Ly9yYXcuZ2l0aHVi
dXNlcmNvbnRlbnQuY29tL2ludGVsL2xrcC10ZXN0cy9tYXN0ZXIvc2Jpbi9tYWtlLmNyb3NzIC1P
IH4vYmluL21ha2UuY3Jvc3MNCj4gICAgICAgICAgY2htb2QgK3ggfi9iaW4vbWFrZS5jcm9zcw0K
PiAgICAgICAgICAjIGh0dHBzOi8vZ2l0aHViLmNvbS9pbnRlbC1sYWItbGtwL2xpbnV4L2NvbW1p
dC9iYTg5OWRiYTM0NzViOTYxMmYyMTJlM2IxZGFlZGMzZDlhMjk5NDU4DQo+ICAgICAgICAgIGdp
dCByZW1vdGUgYWRkIGxpbnV4LXJldmlldyBodHRwczovL2dpdGh1Yi5jb20vaW50ZWwtbGFiLWxr
cC9saW51eA0KPiAgICAgICAgICBnaXQgZmV0Y2ggLS1uby10YWdzIGxpbnV4LXJldmlldyBTdWkt
SmluZ2ZlbmcvTUFJTlRBSU5FUlMtYWRkLW1haW50YWluZXJzLWZvci1EUk0tTE9PTkdTT04tZHJp
dmVyLzIwMjMwMzE2LTA1MTcyNA0KPiAgICAgICAgICBnaXQgY2hlY2tvdXQgYmE4OTlkYmEzNDc1
Yjk2MTJmMjEyZTNiMWRhZWRjM2Q5YTI5OTQ1OA0KPiAgICAgICAgICAjIHNhdmUgdGhlIGNvbmZp
ZyBmaWxlDQo+ICAgICAgICAgIG1rZGlyIGJ1aWxkX2RpciAmJiBjcCBjb25maWcgYnVpbGRfZGly
Ly5jb25maWcNCj4gICAgICAgICAgQ09NUElMRVJfSU5TVEFMTF9QQVRIPSRIT01FLzBkYXkgQ09N
UElMRVI9Z2NjLTEyLjEuMCBtYWtlLmNyb3NzIFc9MSBPPWJ1aWxkX2RpciBBUkNIPWFybSBvbGRk
ZWZjb25maWcNCj4gICAgICAgICAgQ09NUElMRVJfSU5TVEFMTF9QQVRIPSRIT01FLzBkYXkgQ09N
UElMRVI9Z2NjLTEyLjEuMCBtYWtlLmNyb3NzIFc9MSBPPWJ1aWxkX2RpciBBUkNIPWFybSBTSEVM
TD0vYmluL2Jhc2ggZHJpdmVycy9ncHUvZHJtL2xvb25nc29uLw0KPg0KPiBJZiB5b3UgZml4IHRo
ZSBpc3N1ZSwga2luZGx5IGFkZCBmb2xsb3dpbmcgdGFnIHdoZXJlIGFwcGxpY2FibGUNCj4gfCBS
ZXBvcnRlZC1ieToga2VybmVsIHRlc3Qgcm9ib3QgPGxrcEBpbnRlbC5jb20+DQo+IHwgTGluazog
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvb2Uta2J1aWxkLWFsbC8yMDIzMDMxNjE3MjcuOEhuQmY2
Y1ctbGtwQGludGVsLmNvbS8NCj4NCj4gQWxsIHdhcm5pbmdzIChuZXcgb25lcyBwcmVmaXhlZCBi
eSA+Pik6DQo+DQo+ICAgICBkcml2ZXJzL2dwdS9kcm0vbG9vbmdzb24vbHNkY19nZW0uYzogSW4g
ZnVuY3Rpb24gJ2xzZGNfc2hvd19idWZmZXJfb2JqZWN0JzoNCj4+PiBkcml2ZXJzL2dwdS9kcm0v
bG9vbmdzb24vbHNkY19nZW0uYzoyODA6NTE6IHdhcm5pbmc6IGZvcm1hdCAnJWx1JyBleHBlY3Rz
IGFyZ3VtZW50IG9mIHR5cGUgJ2xvbmcgdW5zaWduZWQgaW50JywgYnV0IGFyZ3VtZW50IDQgaGFz
IHR5cGUgJ3NpemVfdCcge2FrYSAndW5zaWduZWQgaW50J30gWy1XZm9ybWF0PV0NCj4gICAgICAg
MjgwIHwgICAgICAgICAgICAgICAgIHNlcV9wcmludGYobSwgImJvWyUwNHVdOiBzaXplOiAlOGx1
a0IgJXNcbiIsDQo+ICAgICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgfn5+Xg0KPiAgICAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwNCj4gICAgICAgICAgIHwgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBsb25nIHVuc2lnbmVkIGludA0K
PiAgICAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICU4dQ0KPiAgICAgICAyODEgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICBpLA0KPiAg
ICAgICAyODIgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICBsc2RjX2JvX3NpemUodGJvKSA+
PiAxMCwNCj4gICAgICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAgfn5+fn5+fn5+
fn5+fn5+fn5+fn5+fn4NCj4gICAgICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgfA0KPiAgICAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBzaXplX3Qge2FrYSB1bnNpZ25lZCBpbnR9DQo+DQo+DQo+
IHZpbSArMjgwIGRyaXZlcnMvZ3B1L2RybS9sb29uZ3Nvbi9sc2RjX2dlbS5jDQo+DQo+ICAgICAy
NjQJDQo+ICAgICAyNjUJaW50IGxzZGNfc2hvd19idWZmZXJfb2JqZWN0KHN0cnVjdCBzZXFfZmls
ZSAqbSwgdm9pZCAqYXJnKQ0KPiAgICAgMjY2CXsNCj4gICAgIDI2NwkjaWZkZWYgQ09ORklHX0RF
QlVHX0ZTDQo+ICAgICAyNjgJCXN0cnVjdCBkcm1faW5mb19ub2RlICpub2RlID0gKHN0cnVjdCBk
cm1faW5mb19ub2RlICopbS0+cHJpdmF0ZTsNCj4gICAgIDI2OQkJc3RydWN0IGRybV9kZXZpY2Ug
KmRkZXYgPSBub2RlLT5taW5vci0+ZGV2Ow0KPiAgICAgMjcwCQlzdHJ1Y3QgbHNkY19kZXZpY2Ug
KmxkZXYgPSB0b19sc2RjKGRkZXYpOw0KPiAgICAgMjcxCQlzdHJ1Y3QgbHNkY19ibyAqbGJvOw0K
PiAgICAgMjcyCQl1bnNpZ25lZCBpbnQgaSA9IDA7DQo+ICAgICAyNzMJDQo+ICAgICAyNzQJCW11
dGV4X2xvY2soJmxkZXYtPmdlbS5tdXRleCk7DQo+ICAgICAyNzUJDQo+ICAgICAyNzYJCWxpc3Rf
Zm9yX2VhY2hfZW50cnkobGJvLCAmbGRldi0+Z2VtLm9iamVjdHMsIGxpc3QpIHsNCj4gICAgIDI3
NwkJCXN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCAqdGJvID0gJmxiby0+dGJvOw0KPiAgICAgMjc4
CQkJc3RydWN0IHR0bV9yZXNvdXJjZSAqcmVzb3VyY2UgPSB0Ym8tPnJlc291cmNlOw0KPiAgICAg
Mjc5CQ0KPiAgID4gMjgwCQkJc2VxX3ByaW50ZihtLCAiYm9bJTA0dV06IHNpemU6ICU4bHVrQiAl
c1xuIiwNCj4NCkhpLCB0aGlzIGlzIGJ1ZmZlciBvYmplY3RzIHRyYWNraW5nIGltcGxlbWVudGVk
IGluIHY3DQoNCkZvciBleGFtcGxlLA0KDQpbcm9vdEBmZWRvcmEgMF0jIHB3ZA0KDQovc3lzL2tl
cm5lbC9kZWJ1Zy9kcmkvMA0KDQpbcm9vdEBmZWRvcmEgMF0jIGNhdCBjaGlwDQoNCkknbSBpbiBM
UzdBMjAwMCwgcnVubmluZyBvbiBjcHUgMHhjMCwgY3B1IHJldmlzb246IDB4MTENCg0KW3Jvb3RA
ZmVkb3JhIDBdIyBjYXQgYm9zDQpib1swMDAwXTogc2l6ZTrCoMKgwqDCoCA4MTEya0IgVlJBTQ0K
Ym9bMDAwMV06IHNpemU6wqDCoMKgIDE2MjA4a0IgVlJBTQ0KYm9bMDAwMl06IHNpemU6wqDCoMKg
wqDCoMKgIDE2a0IgVlJBTQ0KYm9bMDAwM106IHNpemU6wqDCoMKgwqDCoMKgIDE2a0IgVlJBTQ0K
DQoNCldoZW4gdXNpbmcgd2l0aCBtb2Rlc2V0dGluZyBkcml2ZXIgd2l0aCBzaGFkb3dmYiBvcHRp
b24gZW5hYmxlZC4NCg0KYnkgZGVmYXVsdCB3ZSBoYXZlIG9ubHkgNCBCT3MgY3JlYXRlLCB0aGUg
Zmlyc3Qgb25lIGlzIGZvciBmYmNvbizCoCB0aGUgDQpsYXJnZXN0IG9uZSBpc8KgIGZyYW1lYnVm
ZmVyIG9mIGRvdWJsZSBzY3JlZW4uDQoNCmFub3RoZXIgdHdvIGlzIGhhcmR3YXJlIGN1cnNvciBi
by7CoCBPdXIgc3lzdGVtIHBhZ2Ugc2l6ZSBpcyAxNktCIGJ5IGRlZmF1bHQuDQoNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
