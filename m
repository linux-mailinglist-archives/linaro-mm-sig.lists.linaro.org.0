Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D7467C3B0
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 31 Jul 2019 15:36:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 34DF0609B3
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 31 Jul 2019 13:36:56 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 2A29060F13; Wed, 31 Jul 2019 13:36:56 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 48CC060BEF;
	Wed, 31 Jul 2019 13:35:50 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id BD98060770
 for <linaro-mm-sig@lists.linaro.org>; Wed, 31 Jul 2019 13:34:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id AC7AF6097D; Wed, 31 Jul 2019 13:34:37 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
 [209.85.128.47])
 by lists.linaro.org (Postfix) with ESMTPS id 50FEF609B3
 for <linaro-mm-sig@lists.linaro.org>; Wed, 31 Jul 2019 13:34:31 +0000 (UTC)
Received: by mail-wm1-f47.google.com with SMTP id s3so60816428wms.2
 for <linaro-mm-sig@lists.linaro.org>; Wed, 31 Jul 2019 06:34:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=i4RNuLmH2IdqRoXZtbWJ/OiiSdgrVFINGLD7VLcf79I=;
 b=RzRjRpxCoWa3eGB86U/VxhMQtB5y3mO443TcQ4FLUP63SOHx06kkqLtF1X0P6Ead6O
 CcdYTt/diXk8NoAH0Lf3EDlJ5iNjLLRIp4Q6A5FTFRDrq4w4St92rIQAutxhz2NV869w
 CkA1anyxm2S9ZQItF9NbBQRyMMj6vJ0kyCPzD1ONXCo4msSmmoLXQw6kCev4LZHwFNXA
 TvgUyRVXemx3ji35JB7SCbFup1ZpnqkZMHtpznAejyFemFyHSe4kDpjCyWwWLcoH4GP8
 wExWmn0/AWW4Y+L5vQ35nOnNtQKmCo0CFTo1FRSE/z8IJXSi8WOqYzmKr46G8/yqRjYy
 u7Vg==
X-Gm-Message-State: APjAAAVj5/2ime+GTBX3XfVCycT73JhyGf7o92Idz5JXdpT+HpLWHlGr
 v2RRPEAJYwRxvTQEw39oVFI=
X-Google-Smtp-Source: APXvYqxGpdFwuhY+fdgM2CZcJCMfAQRfJPr9pIwRtQatt/DbHMUfVJuDjo/5V3oBC21OKIW2jAL+Qw==
X-Received: by 2002:a1c:a019:: with SMTP id j25mr111460938wme.95.1564580070080; 
 Wed, 31 Jul 2019 06:34:30 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7?
 ([2a02:908:1252:fb60:be8a:bd56:1f94:86e7])
 by smtp.gmail.com with ESMTPSA id a81sm71625173wmh.3.2019.07.31.06.34.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 06:34:29 -0700 (PDT)
To: Chris Wilson <chris@chris-wilson.co.uk>, dri-devel@lists.freedesktop.org, 
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org,
 sumit.semwal@linaro.org
References: <20190731113853.51779-1-christian.koenig@amd.com>
 <156457641010.6373.7515721920178088211@skylake-alporthouse-com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <6421ea80-2bdd-7f63-1cba-9c57157f3946@gmail.com>
Date: Wed, 31 Jul 2019 15:34:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156457641010.6373.7515721920178088211@skylake-alporthouse-com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf: add more reservation object
	locking wrappers
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
Reply-To: christian.koenig@amd.com
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

QW0gMzEuMDcuMTkgdW0gMTQ6MzMgc2NocmllYiBDaHJpcyBXaWxzb246Cj4gUXVvdGluZyBDaHJp
c3RpYW4gS8O2bmlnICgyMDE5LTA3LTMxIDEyOjM4OjUzKQo+PiBDb21wbGV0ZSB0aGUgYWJzdHJh
Y3Rpb24gb2YgdGhlIHd3X211dGV4IGluc2lkZSB0aGUgcmVzZXJ2YXRpb24gb2JqZWN0Lgo+Pgo+
PiBUaGlzIGFsbG93cyB1cyB0byBhZGQgbW9yZSBoYW5kbGluZyBhbmQgZGVidWdnaW5nIHRvIHRo
ZSByZXNlcnZhdGlvbgo+PiBvYmplY3QgaW4gdGhlIGZ1dHVyZS4KPj4KPj4gU2lnbmVkLW9mZi1i
eTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgo+IExvb2tzIGVu
dGlyZWx5IG1lY2hhbmljYWwsCj4gUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgo+Cj4gUXVpZXRseSBvcGluZXMgZm9yIHMvcmVzZXJ2YXRpb25fb2Jq
ZWN0L2RtYV9yZXNlcnZhdGlvbi8KCkkgd2FzIHRoaW5raW5nIGFib3V0IHRoYXQgYXMgd2VsbCBi
ZWNhdXNlICJyZXNlcnZhdGlvbl9vYmplY3QiIGlzIGp1c3QgYSAKcmF0aGVyIGxvbmcgbmFtZSBh
bmQgbm90IHZlcnkgZGVzY3JpcHRpdmUuCgpCdXQgSSdtIG5vdCBzdXJlIGlmIGRtYV9yZXNlcnZh
dGlvbiBmaXRzIGVpdGhlci4gSG93IGFib3V0IHNvbWV0aGluZyAKbGlrZSBkbWFfY250cmw/CgpD
aHJpc3RpYW4uCgo+IC1DaHJpcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bmFyby1tbS1zaWcK
