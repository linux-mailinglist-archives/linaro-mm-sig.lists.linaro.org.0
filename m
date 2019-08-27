Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 95E679F056
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 Aug 2019 18:38:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C5D5E6182E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 Aug 2019 16:38:12 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B76BA61836; Tue, 27 Aug 2019 16:38:12 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3DF6961731;
	Tue, 27 Aug 2019 16:37:49 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8BDA760EFF
 for <linaro-mm-sig@lists.linaro.org>; Tue, 27 Aug 2019 16:37:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 71EA261731; Tue, 27 Aug 2019 16:37:46 +0000 (UTC)
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com
 [209.85.208.49])
 by lists.linaro.org (Postfix) with ESMTPS id 31BD360EFF
 for <linaro-mm-sig@lists.linaro.org>; Tue, 27 Aug 2019 16:37:45 +0000 (UTC)
Received: by mail-ed1-f49.google.com with SMTP id m44so32134352edd.9
 for <linaro-mm-sig@lists.linaro.org>; Tue, 27 Aug 2019 09:37:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=X6m6ji0wgVmeCJH3F3ZV9wKLZzsKCQSRHMJxqstYqj0=;
 b=B9kitHqF1h+CDab6JFzhnUWfA6pwD/D/ZAv1C/g0+Gcq1ON5QWZE4UTRkRfKSIStOm
 Y54OTrYo6QTcAN1a3wFTNiw8PA/mgsl4cgIJgV/u7Rb4wvOGaeAFGcillj8D1BChm+zE
 FgC2zi/7dxSeMLrOzUBCqsRA2yu1tjTQOktGu+nqntjTx3SZvUxXQAigixIQi3KysGYs
 1OJNb2mzVOANbhyXxRjeNoTTC6sW0QZhBFLL/9Idsy2dTqmww0q8MLqokUEhWwxtAAmN
 ShB1Mr1GWTKzG5ItX4noXVE4IvkgF5bYy9SoOF9M5+QCkv9cC2gQraBhk8FaSts1qQye
 8BHw==
X-Gm-Message-State: APjAAAX6NuxlkFReNZEvJdUIF6Mfpaf6UpW16Yyv8pgCFEgNVlqgIxUg
 9a+tSbBt5huLO5aMmGcvjmU2Hg==
X-Google-Smtp-Source: APXvYqyeWUFA33qFqfl3sPquTqe6/sfRYpA7x0PgfM1qpojyxFDmNnmf7vo6xcpK8EEJHtHIbtO/AQ==
X-Received: by 2002:a17:906:3518:: with SMTP id
 r24mr22158673eja.133.1566923864171; 
 Tue, 27 Aug 2019 09:37:44 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id br8sm3665083ejb.92.2019.08.27.09.37.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 09:37:43 -0700 (PDT)
Date: Tue, 27 Aug 2019 18:37:41 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <20190827163741.GD2112@phenom.ffwll.local>
References: <20190826145731.1725-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190826145731.1725-1-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.2.0-2-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] Use dma_fence_array for implementing shared
	dma_resv fences
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.16
Precedence: list
List-Id: "Unified memory management interest group."
 <linaro-mm-sig.lists.linaro.org>
List-Unsubscribe: <https://lists.linaro.org/mailman/options/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=unsubscribe>
List-Archive: <http://lists.linaro.org/pipermail/linaro-mm-sig/>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Subscribe: <https://lists.linaro.org/mailman/listinfo/linaro-mm-sig>,
 <mailto:linaro-mm-sig-request@lists.linaro.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gTW9uLCBBdWcgMjYsIDIwMTkgYXQgMDQ6NTc6MjJQTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToKPiBUaGlzIGlzIHRoZSBuZXcgZG1hX2ZlbmNlX2FycmF5IGJhc2VkIGNvbnRhaW5l
ciBmb3Igc2hhcmVkIGZlbmNlcyBpbiB0aGUKPiBkbWFfcmVzdiBvYmplY3QuCj4gCj4gQWR2YW50
YWdlIG9mIHRoaXMgYXBwcm9hY2ggaXMgdGhhdCB5b3UgY2FuIGdyYWIgYSByZWZlcmVuY2UgdG8g
dGhlCj4gY3VycmVudCBzZXQgb2Ygc2hhcmVkIGZlbmNlcyBhdCBhbnkgdGltZSwgd2hpY2ggYWxs
b3dzIHVzIHRvIGRyb3AgdGhlCj4gc2VxdWVuY2UgbnVtYmVyIGluY3JlbWVudCBhbmQgbWFrZXMg
dGhlIHdob2xlIFJDVSBoYW5kbGluZyBtdWNoIG1vcmUKPiBlYXNpZXIuCj4gCj4gRGlzYWR2YW50
YWdlIGlzIHRoYXQgUkNVIHVzZXJzIG5vdyBoYXZlIHRvIGdyYWIgYSByZWZlcmVuY2UgaW5zdGVh
ZCBvZgo+IHVzaW5nIHRoZSBzZXF1ZW5jZSBjb3VudGVyLiBBcyBmYXIgYXMgSSBjYW4gc2VlIGk5
MTUgd2FzIGFjdHVhbGx5IHRoZQo+IG9ubHkgZHJpdmVyIGRvaW5nIHRoaXMuCj4gCj4gU28gd2Ug
b3B0aW1pemUgZm9yIGFkZGluZyBtb3JlIGZlbmNlcyBpbnN0ZWFkIG9mIHJlYWRpbmcgdGhlbSBu
b3cuCj4gCj4gQW5vdGhlciBiZWhhdmlvciBjaGFuZ2Ugd29ydGggbm90aW5nIGlzIHRoYXQgdGhl
IHNoYXJlZCBmZW5jZXMgYXJlIG5vdwo+IG9ubHkgdmlzaWJsZSBhZnRlciB1bmxvY2tpbmcgdGhl
IGRtYV9yZXN2IG9iamVjdCBvciBjYWxsaW5nCj4gZG1hX3Jlc3ZfZmVuY2VzX2NvbW1pdCgpIG1h
bnVhbGx5LgoKSSB0aGluayBtb3JlIHNwZWNpZmljIHBvaW50IGZvciBwdWJsaXNoaW5nIGZlbmNl
cyBtYWtlcyBhIGxvdCBvZiBzZW5zZSwgc28KdGhpcyBzb3VuZHMgbGlrZSBhIHNvbGlkIGltcHJv
dmVtZW50IG9uIHRoZSBkbWFfcmVzdiBhcGkuIEknbSB3b3JraW5nIG9uCnNvbWUgZG1hX2ZlbmNl
IGluc3RydW1lbnRhdGlvbiB3aGVyZSB0aGF0IGF0IGxlYXN0IG1pZ2h0IGJlIHVzZWZ1bC4KCi9t
ZSBiYWNrIHRvIGJ1cnJpZWQgc3RhdGUKCkNoZWVycywgRGFuaWVsCi0tIApEYW5pZWwgVmV0dGVy
ClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpodHRwOi8vYmxvZy5mZndsbC5j
aApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6
Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
