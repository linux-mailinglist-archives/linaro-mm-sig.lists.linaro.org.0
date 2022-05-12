Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0715E5315B2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 May 2022 21:24:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3470E3F4C9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 May 2022 19:24:51 +0000 (UTC)
Received: from alexa-out-sd-02.qualcomm.com (alexa-out-sd-02.qualcomm.com [199.106.114.39])
	by lists.linaro.org (Postfix) with ESMTPS id AA03D40497
	for <linaro-mm-sig@lists.linaro.org>; Thu, 12 May 2022 14:50:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
  t=1652367015; x=1683903015;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=AJOZLU0t6aDTGHtV1c8nOzI70dn0CA+lR89QhiodPug=;
  b=wiNcTh+OCYLwL/zrUnWVsmEar+0neJ/YeoHf32LLFkIGrzKYFnmAMBYA
   JCTHmxcsTINBGDyJrL20kJv2n3uLP8Lh8uhDogq6YQZ1Lr0svx5U4SVue
   D7GszkGLGRLjSyNvlbnl/qvbnMKmsF1AuoMvTGZ31JdRpk0JLGkutsci2
   s=;
Received: from unknown (HELO ironmsg04-sd.qualcomm.com) ([10.53.140.144])
  by alexa-out-sd-02.qualcomm.com with ESMTP; 12 May 2022 07:50:14 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
  by ironmsg04-sd.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 May 2022 07:50:14 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Thu, 12 May 2022 07:50:13 -0700
Received: from [10.214.30.67] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.22; Thu, 12 May
 2022 07:50:10 -0700
Message-ID: <9be4ea50-4dc0-50f0-0552-e4b9e4feafa2@quicinc.com>
Date: Thu, 12 May 2022 20:20:07 +0530
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
 <4d644a01-5259-a063-b5b2-ea95d5e7dd88@quicinc.com>
 <93103bb7-8d67-a9ae-31c8-d53cb651a027@amd.com>
From: Charan Teja Kalla <quic_charante@quicinc.com>
In-Reply-To: <93103bb7-8d67-a9ae-31c8-d53cb651a027@amd.com>
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-MailFrom: quic_charante@quicinc.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: QV7WLM4LYU3K6BZTDFSJUYP6CQ6XZORW
X-Message-ID-Hash: QV7WLM4LYU3K6BZTDFSJUYP6CQ6XZORW
X-Mailman-Approved-At: Mon, 23 May 2022 19:24:47 +0000
CC: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH V2] dmabuf: ensure unique directory name for dmabuf stats
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QV7WLM4LYU3K6BZTDFSJUYP6CQ6XZORW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIENocmlzdGlhbiBmb3IgdGhlIGNvbW1lbnRzISENCg0KT24gNS8xMS8yMDIyIDEyOjMz
IFBNLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOg0KPiANCj4+IFRoZSBzaW5nbGUgbnVtYmVyIGFw
cHJvYWNoLCBnZW5lcmF0ZWQgYnkgYXRvbWljLCB3b3VsZG4ndCBicmVhayB0aGUNCj4+IHVhcGks
IGJ1dCB0aGF0IG51bWJlciB3b24ndCBnaXZlIGFueSBtZWFuaW5nZnVsIGluZm9ybWF0aW9uIGVz
cGVjaWFsbHkNCj4+IHdoZW4gdGhpcyBpcyB0YXJnZXRlZCBqdXN0IGZvciBkZWJ1ZyBwdXJwb3Nl
LiBBbmQganVzdCAnaW5vZGUnIGlzIG5vdA0KPj4gdXNhYmxlIGZvciBhbHJlYWR5IHN0YXRlZCBy
ZWFzb25zLg0KPiANCj4gV2VsbCwgd2h5IGRvIHlvdSB3YW50IHRvIHVzZSB0aGUgaW5vIGluIHRo
ZSBmaXJzdCBwbGFjZT8gVGhpcyBpcyBhbg0KPiBhbm9ueW1vdXMgaW5vZGUgbm90IGFzc29jaWF0
ZWQgd2l0aCBhbnkgZmlsZXN5c3RlbSwgc28gdGhhdCBudW1iZXIgaXMNCj4gbWVhbmluZ2xlc3Mg
YW55d2F5Lg0KPiANCg0KSXQgaXMganVzdCBmb3IgZWFzZSBvZiBkZWJ1Z2dpbmcuIE5vdGhpbmcg
bW9yZS4gSSBjYW4gcXVpY2tseSB0cmF2ZXJzZQ0KdGhlIC9zeXMva2VybmVsL2RtYWJ1Zi9idWZm
ZXJzLyogYW5kIGdldCBjb21wbGV0ZSBpbmZvcm1hdGlvbiBhYm91dCB0aGUNCmRtYWJ1ZiBidWZm
ZXJzIHdoaWxlIHJlbGF0aW5nIHRvIHdoaWNoIHByb2Nlc3MgdGhpcyBidWZmZXIgaXMgYWxsb2Nh
dGVkDQpieSwgdXNpbmcgdGhpcyBpbm9kZSBhcyB0aGUgJ3VuaXF1ZScgcmVmZXJlbmNlLg0KDQpo
dHRwczovL2NzLmFuZHJvaWQuY29tL2FuZHJvaWQvcGxhdGZvcm0vc3VwZXJwcm9qZWN0LysvbWFz
dGVyOnN5c3RlbS9tZW1vcnkvbGlibWVtaW5mby9saWJkbWFidWZpbmZvL3Rvb2xzL2RtYWJ1Zl9k
dW1wLmNwcA0KDQo+PiBIb3cgYWJvdXQgdXNpbmcgdGhlIGF0b21pYyBudW1iZXIgZ2VuZXJhdGVk
IGl0IHNlbGYgdXNlZCBhcyBpbm9kZQ0KPj4gbnVtYmVyPyBJIHNlZSB0bXBmcyBhbHNvIG1haW50
YWlucyBpdHMgb3duIGlub2RlIG51bWJlcnMgZm9yIHRoZSBzYW1lDQo+PiBvdmVyZmxvdyByZWFz
b25zWzJdLg0KPiANCj4gWWVhaCwgdGhhdCBjb3VsZCBwb3RlbnRpYWxseSB3b3JrIGFzIHdlbGwu
DQo+IA0KDQpUaGFua3MuIFdpbGwgd29yayBvbiB0aGUgbmV4dCB2ZXJzaW9uIG9mIHRoaXMgcGF0
Y2guDQoNCj4gUmVnYXJkcywNCj4gQ2hyaXN0aWFuLg0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
