Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EC6666D62B0
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  4 Apr 2023 15:23:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CF8563F09C
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  4 Apr 2023 13:23:08 +0000 (UTC)
Received: from www381.your-server.de (www381.your-server.de [78.46.137.84])
	by lists.linaro.org (Postfix) with ESMTPS id 593733E8F3
	for <linaro-mm-sig@lists.linaro.org>; Tue,  4 Apr 2023 13:22:57 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=metafoo.de header.s=default2002 header.b=TUkvrOCa;
	spf=pass (lists.linaro.org: domain of lars@metafoo.de designates 78.46.137.84 as permitted sender) smtp.mailfrom=lars@metafoo.de;
	dmarc=pass (policy=none) header.from=metafoo.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=metafoo.de;
	s=default2002; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=KS/PAoriGWh0QOffAFISIzaXM+OMfc5TD47VKbQqGh4=; b=TUkvrOCa+EQWog7XwVqSljA8HD
	qs2uTEGpr2nmASxWKFA1vB2Poh7nyFNj9w113QvxnlY4tvxhsqQrxoawdCD+od0ySVNeXsqFy4n/2
	xN6eIdhOYuaq2NIb+WxMh7ji1niYAtbXtxi2rwSnmoJoX6zYA4tUeYPjTDsB4DAA2WqtTUsd7Z2V3
	RzKDrAnDsG9wF57PofWXZXvYGQlwAQpuNtcQY9AVARJSbzI+L7nCHVRvUSPqc1UzD/ruTSJGDJu8+
	7iUzG8xnoqjZxlDbVFmxCRzWhp85EjGK/W0E2LUhIlWifeS/8ATIx7/eW3GFWoN6562CF6JaPr/rp
	EVd7tMug==;
Received: from sslproxy04.your-server.de ([78.46.152.42])
	by www381.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <lars@metafoo.de>)
	id 1pjgch-0008PQ-BV; Tue, 04 Apr 2023 15:22:55 +0200
Received: from [2604:5500:c0e5:eb00:da5e:d3ff:feff:933b]
	by sslproxy04.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <lars@metafoo.de>)
	id 1pjgcg-0003TQ-Ou; Tue, 04 Apr 2023 15:22:54 +0200
Message-ID: <370bccc6-e418-a05f-2c3b-6a17b02392a2@metafoo.de>
Date: Tue, 4 Apr 2023 06:22:50 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: Paul Cercueil <paul@crapouillou.net>, =?UTF-8?Q?Nuno_S=c3=a1?=
 <noname.nuno@gmail.com>, Jonathan Cameron <jic23@kernel.org>,
 Vinod Koul <vkoul@kernel.org>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
References: <20230403154800.215924-1-paul@crapouillou.net>
 <20230403154800.215924-8-paul@crapouillou.net>
 <798e1ff0651da8e4b113d30bf8cec2a7a0e6898f.camel@gmail.com>
 <2dac030470ffe74b6d21a1e6510afcefaf58cd6a.camel@crapouillou.net>
From: Lars-Peter Clausen <lars@metafoo.de>
In-Reply-To: <2dac030470ffe74b6d21a1e6510afcefaf58cd6a.camel@crapouillou.net>
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.103.8/26865/Tue Apr  4 09:24:56 2023)
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 593733E8F3
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.50 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[metafoo.de,none];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[metafoo.de:s=default2002];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:24940, ipnet:78.46.0.0/15, country:DE];
	NEURAL_HAM(-0.00)[-1.000];
	ARC_NA(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FREEMAIL_TO(0.00)[crapouillou.net,gmail.com,kernel.org,analog.com,linaro.org,amd.com];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	HAS_X_AS(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[metafoo.de:+];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[]
Message-ID-Hash: BG2N45NENXNLXQQLPF5JVDL6SOJYP5WJ
X-Message-ID-Hash: BG2N45NENXNLXQQLPF5JVDL6SOJYP5WJ
X-MailFrom: lars@metafoo.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, dmaengine@vger.kernel.org, linux-media@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 07/11] iio: core: Add new DMABUF interface infrastructure
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BG2N45NENXNLXQQLPF5JVDL6SOJYP5WJ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

T24gNC80LzIzIDAwOjU1LCBQYXVsIENlcmN1ZWlsIHdyb3RlOg0KPiBbLi4uXQ0KPj4+ICvCoMKg
wqDCoMKgwqDCoHByaXYgPSBhdHRhY2gtPmltcG9ydGVyX3ByaXY7DQo+Pj4gK8KgwqDCoMKgwqDC
oMKgbGlzdF9kZWxfaW5pdCgmcHJpdi0+ZW50cnkpOw0KPj4+ICsNCj4+PiArwqDCoMKgwqDCoMKg
wqBpaW9fYnVmZmVyX2RtYWJ1Zl9wdXQoYXR0YWNoKTsNCj4+PiArwqDCoMKgwqDCoMKgwqBpaW9f
YnVmZmVyX2RtYWJ1Zl9wdXQoYXR0YWNoKTsNCj4+PiArDQo+PiBJcyB0aGlzIGludGVuZGVkPyBM
b29rcyBzdXNwaWNpb3VzLi4uDQo+IEl0IGlzIGludGVuZGVkLCB5ZXMuIFlvdSB3YW50IHRvIHJl
bGVhc2UgdGhlIGRtYV9idWZfYXR0YWNobWVudCB0aGF0J3MNCj4gY3JlYXRlZCBpbiBpaW9fYnVm
ZmVyX2F0dGFjaF9kbWFidWYoKSwgYW5kIHlvdSBuZWVkIHRvIGNhbGwNCj4gaWlvX2J1ZmZlcl9m
aW5kX2F0dGFjaG1lbnQoKSB0byBnZXQgYSBwb2ludGVyIHRvIGl0LCB3aGljaCBhbHNvIGdldHMg
YQ0KPiBzZWNvbmQgcmVmZXJlbmNlIC0gc28gaXQgbmVlZHMgdG8gdW5yZWYgdHdpY2UuDQpMZXQn
cyBhZGQgYSBjb21tZW50IGRvY3VtZW50aW5nIHRoYXQuDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
