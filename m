Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8PTKDn1XDGodfwUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 14:28:45 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A7A9857EAD6
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 14:28:44 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 267BB406F4
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 12:28:43 +0000 (UTC)
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
	by lists.linaro.org (Postfix) with ESMTPS id 4818E3F829
	for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2026 12:28:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=infradead.org header.s=casper.20170209 header.b=q1qj6Ejv;
	spf=none (lists.linaro.org: domain of willy@infradead.org has no SPF policy when checking 90.155.50.34) smtp.mailfrom=willy@infradead.org;
	dmarc=pass (policy=none) header.from=infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=LSInc1JiWKpTsleWh0NnlPhduAwurDov6fxszzRl4KU=; b=q1qj6EjvjeOCpnV9NuMTZItkZo
	T49ZLX8cYfyOlkxGJ5ed0/205ef9CdMyfpTnPrJw4d0NlREDi558jtxp6i14+ScXOJJJeOKeAI6Ca
	c6ybN1E7zSWrAAJBgiMdxBZFC6gf/BHl9K8PjFGljUMOD377kqH85RMtSd0emtLXkLcCkCtdj8PSO
	+3Y6QxsUHJCJkZp8fwY6a7sB7lowzJocWIGcFLpvXn+T5Zn5WBPWyJtrQMUhHCFk/3fQF46w7jPnf
	7cF8vntKQ5xvdQ2a1KiK9hB1UPs/bVJjk2Y+gCy4qSHwmzjWs6ixfRlnn3wz0OeKWI3dHtddEaGUA
	1Rzx+RCA==;
Received: from willy by casper.infradead.org with local (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPJYp-00000005tqO-1kxS;
	Tue, 19 May 2026 12:28:35 +0000
Date: Tue, 19 May 2026 13:28:35 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Markus Elfring <Markus.Elfring@web.de>
Message-ID: <agxXc8ttEzBFOlE2@casper.infradead.org>
References: <20260519-qda-series-v1-9-b2d984c297f8@oss.qualcomm.com>
 <5e0d72fa-929a-4905-9066-6648892bef4a@web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5e0d72fa-929a-4905-9066-6648892bef4a@web.de>
X-Spamd-Bar: ----
Message-ID-Hash: TA6ARU75DH3UISFWCA3MJWMFCU6EMRDA
X-Message-ID-Hash: TA6ARU75DH3UISFWCA3MJWMFCU6EMRDA
X-MailFrom: willy@infradead.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>, dri-devel@lists.freedesktop.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, linaro-mm-sig@lists.linaro.org, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, David Airlie <airlied@gmail.com>, =?iso-8859-1?Q?J=F6rg_R=F6del?= <joro@8bytes.org>, Jonathan Corbet <corbet@lwn.net>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Oded Gabbay <ogabbay@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Shuah Khan <skhan@linuxfoundation.org>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Thomas Zimmermann <tzimmermann@suse.de>, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, Bharath Kumar <quic_bkumar@quicinc.com>, Bjorn Andersson <andersson@kernel.org>, Chenna Kesava Raju <quic_chennak@quicinc.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Konrad Dybcio <konradybcio@kernel.org>, Rob Clark <robin.clark@
 oss.qualcomm.com>, Srinivas Kandagatla <srini@kernel.org>, Will Deacon <will@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 09/15] accel/qda: Add DMA-backed GEM objects and memory manager integration
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/TA6ARU75DH3UISFWCA3MJWMFCU6EMRDA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [0.69 / 15.00];
	R_DKIM_REJECT(1.00)[infradead.org:s=casper.20170209];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[infradead.org : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[web.de];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[29];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[infradead.org:-];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[willy@infradead.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[oss.qualcomm.com,lists.freedesktop.org,lists.linux.dev,vger.kernel.org,lists.linaro.org,amd.com,gmail.com,8bytes.org,lwn.net,linux.intel.com,kernel.org,arm.com,linuxfoundation.org,ffwll.ch,linaro.org,suse.de,quicinc.com, oss.qualcomm.com];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:url,linaro.org:email,lists.linaro.org:rdns,lists.linaro.org:helo,casper.infradead.org:mid]
X-Rspamd-Queue-Id: A7A9857EAD6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQpGZWVsIGZyZWUgdG8gaWdub3JlIGV2ZXJ5dGhpbmcgTWFya3VzIHNheXMuDQoNCk9uIFR1ZSwg
TWF5IDE5LCAyMDI2IGF0IDAyOjE0OjM0UE0gKzAyMDAsIE1hcmt1cyBFbGZyaW5nIHdyb3RlOg0K
PiDigKYNCj4gPiBBc3Npc3RlZC1ieTogQ2xhdWRlOmNsYXVkZS00LTYtc29ubmV0DQo+IOKApg0K
PiANCj4gRGlkIHN1Y2ggYW4gaW5mb3JtYXRpb24gc291cmNlIGdhdGhlciB0aGUga25vd2xlZGdl
IHRvIGJlbmVmaXQgbW9yZQ0KPiBmcm9tIHRoZSBhcHBsaWNhdGlvbiBvZiBzY29wZS1iYXNlZCBy
ZXNvdXJjZSBtYW5hZ2VtZW50Pw0KPiANCj4gDQo+IOKApg0KPiA+ICsrKyBiL2RyaXZlcnMvYWNj
ZWwvcWRhL3FkYV9kcnYuYw0KPiDigKYNCj4gPiBAQCAtMzIsNiArMzMsMTggQEAgc3RhdGljIHZv
aWQgcWRhX3Bvc3RjbG9zZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCBzdHJ1Y3QgZHJtX2ZpbGUg
KmZpbGUpDQo+ID4gIHsNCj4g4oCmDQo+ID4gKwkJaWYgKHJlZmNvdW50X2RlY19hbmRfdGVzdCgm
aW9tbXVfZGV2LT5yZWZjb3VudCkpIHsNCj4gPiArCQkJc3Bpbl9sb2NrX2lycXNhdmUoJmlvbW11
X2Rldi0+bG9jaywgZmxhZ3MpOw0KPiA+ICsJCQlpb21tdV9kZXYtPmFzc2lnbmVkX3BpZCA9IDA7
DQo+ID4gKwkJCWlvbW11X2Rldi0+YXNzaWduZWRfZmlsZV9wcml2ID0gTlVMTDsNCj4gPiArCQkJ
c3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmaW9tbXVfZGV2LT5sb2NrLCBmbGFncyk7DQo+ID4gKwkJ
fQ0KPiDigKYNCj4gDQo+IFVuZGVyIHdoaWNoIGNpcmN1bXN0YW5jZXMgd291bGQgeW91IGJlY29t
ZSBpbnRlcmVzdGVkIHRvIGFwcGx5IGEgc3RhdGVtZW50DQo+IGxpa2Ug4oCcZ3VhcmQoc3Bpbmxv
Y2tfaXJxc2F2ZSkoJmlvbW11X2Rldi0+bG9jayk74oCdPw0KPiBodHRwczovL2VsaXhpci5ib290
bGluLmNvbS9saW51eC92Ny4xLXJjNC9zb3VyY2UvaW5jbHVkZS9saW51eC9zcGlubG9jay5oI0w2
MTktTDYyMg0KPiANCj4gUmVnYXJkcywNCj4gTWFya3VzDQo+IA0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3Qg
LS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
