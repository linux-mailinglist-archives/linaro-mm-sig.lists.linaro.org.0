Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 3352553151B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 May 2022 18:55:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 621B03F4AA
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 May 2022 16:55:12 +0000 (UTC)
Received: from alexa-out-sd-01.qualcomm.com (alexa-out-sd-01.qualcomm.com [199.106.114.38])
	by lists.linaro.org (Postfix) with ESMTPS id B53183EF80
	for <linaro-mm-sig@lists.linaro.org>; Wed, 11 May 2022 06:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
  t=1652251773; x=1683787773;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=9xUB3PDaC1rihGyvYoy+dV8dCytkzaD9ByU0h7HXKAo=;
  b=oivXIAHSb4tVMfdbClsnpTN8TNa9PRN0bWHgA7VBDWtK7swd9iNot3Aj
   3mSmnaHe9J7lxtTZZzVbIOreemEjW+Fs9vWOihvz8yET92prg+GyczofQ
   k78SXVcngQfS6swprFA3dRzFEoQdfIZoXQjro9p5sNvl2bdaR/4xNLNP2
   k=;
Received: from unknown (HELO ironmsg03-sd.qualcomm.com) ([10.53.140.143])
  by alexa-out-sd-01.qualcomm.com with ESMTP; 10 May 2022 23:49:32 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
  by ironmsg03-sd.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 May 2022 23:49:32 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Tue, 10 May 2022 23:49:32 -0700
Received: from [10.214.30.67] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.22; Tue, 10 May
 2022 23:49:29 -0700
Message-ID: <4d644a01-5259-a063-b5b2-ea95d5e7dd88@quicinc.com>
Date: Wed, 11 May 2022 12:19:26 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
	<gregkh@linuxfoundation.org>, <sumit.semwal@linaro.org>, <hridya@google.com>,
	<daniel.vetter@ffwll.ch>, <tjmercier@google.com>
References: <1652191562-18700-1-git-send-email-quic_charante@quicinc.com>
 <4ac55be2-7d55-2c3b-0d5e-f61c02c62792@amd.com>
 <6dc59fa7-5885-9ed1-54c3-f2d112786312@quicinc.com>
 <2a0312d3-d576-b5be-c823-938b38096523@amd.com>
From: Charan Teja Kalla <quic_charante@quicinc.com>
In-Reply-To: <2a0312d3-d576-b5be-c823-938b38096523@amd.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-MailFrom: quic_charante@quicinc.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: V6ILEZSLN7Y6DT5NPFVKOVDTZNP34K5G
X-Message-ID-Hash: V6ILEZSLN7Y6DT5NPFVKOVDTZNP34K5G
X-Mailman-Approved-At: Mon, 23 May 2022 16:55:07 +0000
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH V2] dmabuf: ensure unique directory name for dmabuf stats
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/V6ILEZSLN7Y6DT5NPFVKOVDTZNP34K5G/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIENocmlzdGlhbiBmb3IgdGhlIGlucHV0cyEhDQoNCk9uIDUvMTAvMjAyMiAxMDo1MiBQ
TSwgQ2hyaXN0aWFuIEvDtm5pZyB3cm90ZToNCj4+Pj4gwqDCoCDCoMKgwqDCoMKgIGlmICghZG1h
YnVmIHx8ICFkbWFidWYtPmZpbGUpDQo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAt
RUlOVkFMOw0KPj4+PiBAQCAtMTkyLDcgKzE5Myw4IEBAIGludCBkbWFfYnVmX3N0YXRzX3NldHVw
KHN0cnVjdCBkbWFfYnVmICpkbWFidWYpDQo+Pj4+IMKgwqAgwqDCoMKgwqDCoCAvKiBjcmVhdGUg
dGhlIGRpcmVjdG9yeSBmb3IgYnVmZmVyIHN0YXRzICovDQo+Pj4+IMKgwqDCoMKgwqDCoCByZXQg
PSBrb2JqZWN0X2luaXRfYW5kX2FkZCgmc3lzZnNfZW50cnktPmtvYmosICZkbWFfYnVmX2t0eXBl
LA0KPj4+PiBOVUxMLA0KPj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
ICIlbHUiLCBmaWxlX2lub2RlKGRtYWJ1Zi0+ZmlsZSktPmlfaW5vKTsNCj4+Pj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiJWx1LSVsdSIsIGZpbGVfaW5vZGUoZG1hYnVm
LT5maWxlKS0+aV9pbm8sDQo+Pj4gV2h5IG5vdCBqdXN0IHVzZSB0aGUgdW5pcXVlIHZhbHVlIGhl
cmU/IE9yIGlzIHRoZSBpbm9kZSBudW1iZXIgbmVjZXNzYXJ5DQo+Pj4gZm9yIHNvbWV0aGluZz8N
Cj4+IFRoaXMgd2lsbCBlYXNlIHRoZSBkZWJ1Z2dpbmcgYSBsb3QuIEdpdmVuIHRoZSBkdW1wLCBJ
IGNhbiBlYXNpbHkgbWFwDQo+PiB3aGljaCBkbWFidWYgYnVmZmVyIHRvIHRoZSBwcm9jZXNzLiBP
biB0aGUgY3Jhc2h1dGlsdHkgSSBqdXN0IGhhdmUgdG8NCj4+IHNlYXJjaCBmb3IgdGhpcyBpbm9k
ZSBpbiB0aGUgZmlsZXMgb3V0cHV0LCBqdXN0IG9uZSBleGFtcGxlLg0KPiANCj4gVC5KLiBNZXJj
aWVyIGp1c3QgY29uZmlybWVkIG15IHN1c3BpY2lvbiB0aGF0IHRoaXMgd291bGQgYnJlYWsgdGhl
IFVBUEkuDQo+IFNvIHRoYXQgd29uJ3Qgd29yay4NCj4gPiBUaGlzIG5lZWRzIHRvIGJlIGEgc2lu
Z2xlIG51bWJlciwgcHJlZmVyYWJsZSBkb2N1bWVudGVkIGFzIHN1Y2guDQoNClVzdWFsbHksIFdo
YXQgYXJlIHRoZSBjaGFuY2VzIHRoYXQgYSBwYXRjaCBicmVha2luZyBVQVBJIHdpbGwgZ2V0DQph
Y2NlcHRlZC4gSU1PLCBJZiB0aGVyZSBhcmUgZmV3IHVzZXJzLCBJIGhhZCBsZWFybnQgdGhhdCBp
dCBpcyBhbGxvd2VkDQp0byBtZXJnZS4gKEVnOiBJbiBbMV0gd2hlcmUgQW5kcmV3LCAtbW0gbWFp
bnRhaW5lciwgbWVudGlvbmVkIHRoYXQ6ICJJDQp0aGluayB3ZSBzaG91bGQganVzdCBhYnNvcmIg
YW55IHRyYW5zaXRvcnkgZGFtYWdlIHdoaWNoIHRoaXMgY2F1c2VzDQpwZW9wbGUuIiBmb3IgdGhl
IHBhdGNoIHBvc3RlZCBicmVha2luZyB0aGUgVUFQSSkuIEV2ZW4gdGhlIHBhdGNoDQpjNzE1ZGVm
NTE1OTEgKCJkbWEtYnVmOiBEZWxldGUgdGhlIERNQS1CVUYgYXR0YWNobWVudCBzeXNmcyBzdGF0
aXN0aWNzIikNCmRlbGV0ZWQgdGhlIHN5c2ZzIGVudHJpZXMgd2hpY2ggYWxzbyBjb21lcyB1bmRl
ciB0aGUgVUFQSSBicmVha2FnZSBidXQNCnN0aWxsIGFsbG93ZWQgdG8gbWVyZ2UuIE9uIHRob3Nl
IGxpbmVzLCBJcyBpdCBmYWlyIHRvIHNheSBJZiBmZXcgdXNlcnMNCmFyZSB0aGVyZSwgdWFwaSBi
cmVha2FnZSBjaGFuZ2VzIGFyZSBhbGxvd2VkIHRvIG1lcmdlIG9uIHRoZSBhc3N1bXB0aW9uDQp0
aGF0IHVzZXJzcGFjZSBjb2RlIG5lZWRzIHRvIGJlIGFsaWduZWQgd2l0aCB0aGUgbmV3IHVhcGkg
Y2hhbmdlcz8gVG8gbXkNCmtub3dsZWRnZSwgQW5kcm9pZCBpcyB0aGUgb25seSB1c2VyIHdoaWNo
IGlzIGp1c3QgZ2V0dGluZyB0aGUgZG1hYnVmDQpzdGF0cyBhcyBwYXJ0IG9mIHRoZSBkZWJ1ZyBj
b2RlLg0KDQpUaGUgc2luZ2xlIG51bWJlciBhcHByb2FjaCwgZ2VuZXJhdGVkIGJ5IGF0b21pYywg
d291bGRuJ3QgYnJlYWsgdGhlDQp1YXBpLCBidXQgdGhhdCBudW1iZXIgd29uJ3QgZ2l2ZSBhbnkg
bWVhbmluZ2Z1bCBpbmZvcm1hdGlvbiBlc3BlY2lhbGx5DQp3aGVuIHRoaXMgaXMgdGFyZ2V0ZWQg
anVzdCBmb3IgZGVidWcgcHVycG9zZS4gQW5kIGp1c3QgJ2lub2RlJyBpcyBub3QNCnVzYWJsZSBm
b3IgYWxyZWFkeSBzdGF0ZWQgcmVhc29ucy4NCg0KSG93IGFib3V0IHVzaW5nIHRoZSBhdG9taWMg
bnVtYmVyIGdlbmVyYXRlZCBpdCBzZWxmIHVzZWQgYXMgaW5vZGUNCm51bWJlcj8gSSBzZWUgdG1w
ZnMgYWxzbyBtYWludGFpbnMgaXRzIG93biBpbm9kZSBudW1iZXJzIGZvciB0aGUgc2FtZQ0Kb3Zl
cmZsb3cgcmVhc29uc1syXS4gVGhlIGNvZGUgd2lsbCBiZSBsaWtlIGJlbG93KHVudGVzdGVkKToN
Cg0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMgYi9kcml2ZXJzL2RtYS1i
dWYvZG1hLWJ1Zi5jDQppbmRleCBhNmZjOTZlLi5lZWVkNzcwIDEwMDY0NA0KLS0tIGEvZHJpdmVy
cy9kbWEtYnVmL2RtYS1idWYuYw0KKysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYw0KQEAg
LTQwOCwxMSArNDA4LDE3IEBAIHN0YXRpYyBpbmxpbmUgaW50IGlzX2RtYV9idWZfZmlsZShzdHJ1
Y3QgZmlsZSAqZmlsZSkNCiBzdGF0aWMgc3RydWN0IGZpbGUgKmRtYV9idWZfZ2V0ZmlsZShzdHJ1
Y3QgZG1hX2J1ZiAqZG1hYnVmLCBpbnQgZmxhZ3MpDQogew0KICAgICAgICBzdHJ1Y3QgZmlsZSAq
ZmlsZTsNCisgICAgICAgc3RhdGljIGF0b21pYzY0X3QgdW5pcXVlX2lkID0gQVRPTUlDNjRfSU5J
VCgwKTsNCiAgICAgICAgc3RydWN0IGlub2RlICppbm9kZSA9IGFsbG9jX2Fub25faW5vZGUoZG1h
X2J1Zl9tbnQtPm1udF9zYik7DQoNCiAgICAgICAgaWYgKElTX0VSUihpbm9kZSkpDQogICAgICAg
ICAgICAgICAgcmV0dXJuIEVSUl9DQVNUKGlub2RlKTsNCg0KKyAgICAgICAvKg0KKyAgICAgICAg
KiBPdmVycmlkZSB0aGUgaW5vZGUtPmlfbm8gbnVtYmVyIHdpdGggdGhlIHVuaXF1ZQ0KKyAgICAg
ICAgKiBkbWFidWYgc3BlY2lmaWMgdmFsdWUNCisgICAgICAgICovDQorICAgICAgIGlub2RlLT5p
X25vID0gYXRvbWljNjRfYWRkX3JldHVybigxLCAmdW5pcXVlX2lkKTsNCiAgICAgICAgaW5vZGUt
Pmlfc2l6ZSA9IGRtYWJ1Zi0+c2l6ZTsNCiAgICAgICAgaW5vZGVfc2V0X2J5dGVzKGlub2RlLCBk
bWFidWYtPnNpemUpOw0KDQoNClsxXQ0KaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9q
ZWN0L2xpbnV4LW1tL3BhdGNoLzRmMDkxNzc2MTQyZjJlYmY3Yjk0MDE4MTQ2ZGU3MjMxODQ3NGU2
ODYuMTY0NzAwODc1NC5naXQucXVpY19jaGFyYW50ZUBxdWljaW5jLmNvbS8jMjQ3ODAxMzkNCg0K
WzJdDQpodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9zdGFi
bGUvbGludXguZ2l0L3BhdGNoLz9pZD1lODA5ZDVmMGI1YzkxMmZlOTgxZGNlNzM4ZjMyODNiMjAx
MDY2NWYwDQoNClRoYW5rcywNCkNoYXJhbg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGlu
YXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
