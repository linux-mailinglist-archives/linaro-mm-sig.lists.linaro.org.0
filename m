Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 03BB330487F
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 Jan 2021 20:26:08 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2C1A066743
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 26 Jan 2021 19:26:07 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1B1B166754; Tue, 26 Jan 2021 19:26:07 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BC103619D7;
	Tue, 26 Jan 2021 19:25:45 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D5FF666737
 for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Jan 2021 19:25:42 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C95D266743; Tue, 26 Jan 2021 19:25:42 +0000 (UTC)
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com
 [209.85.214.177])
 by lists.linaro.org (Postfix) with ESMTPS id 92A1A66743
 for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Jan 2021 19:25:41 +0000 (UTC)
Received: by mail-pl1-f177.google.com with SMTP id b8so10303175plh.12
 for <linaro-mm-sig@lists.linaro.org>; Tue, 26 Jan 2021 11:25:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=nK7tnHnznGQB0kPXMrTbGs0rXvcjNbLRXG7T5ai/0Zc=;
 b=pW69DvcN2omHlHFAVsjmS+nS5mXWJA/+1udPGkKavn/dVsXnmevywpBGCrmvkKrHGA
 shNKsiq4C1tVBVydHF6vsCp/YtDwf0PjAKzgQ29cZElyQZCKkbMTDV1M4NHNlITTRXXY
 FsiseZ9/vCskFf0P6k3LNoEjK4lUHwVCwo0ut/AjOim0rYGhzdzn1oC5eufTB7sXD7bg
 GAbuqkd7n95c9t8q0FPdhbnfLdPKh/3tJAJNgkvwWnrBcQVgP1ShpUsN342ZGbw8uh7t
 IACPJyJDGF3k/1ipRCon0IkRqgqdWSL5L5AsLe/oUa2uGVDOVZreWV4z3hZX6/mNelYC
 HZDA==
X-Gm-Message-State: AOAM530DWi92AOEuNPwWfoNHFyQXBwCMLLikstxTrYpJ3R3r/e+owPjN
 apNK0PG8tTBo5aA1AGm4xQCpGNCaUS0=
X-Google-Smtp-Source: ABdhPJyTSqN+Wy7o7ylbYmXGZX4TARLM/Pp5CHrEy+BLWy2fLLjk4S4tsgG6xjJxdHckkDnuEilVQw==
X-Received: by 2002:a17:902:b692:b029:de:43aa:6537 with SMTP id
 c18-20020a170902b692b02900de43aa6537mr7623990pls.65.1611689140727; 
 Tue, 26 Jan 2021 11:25:40 -0800 (PST)
Received: from google.com ([2620:15c:211:201:9dd5:b47b:bb84:dede])
 by smtp.gmail.com with ESMTPSA id s73sm20345829pgc.46.2021.01.26.11.25.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Jan 2021 11:25:39 -0800 (PST)
Date: Tue, 26 Jan 2021 11:25:36 -0800
From: Minchan Kim <minchan@kernel.org>
To: Michal Hocko <mhocko@suse.com>
Message-ID: <YBBssDOJNQ8qq9w1@google.com>
References: <20210121175502.274391-1-minchan@kernel.org>
 <20210121175502.274391-5-minchan@kernel.org>
 <20210126074605.GB827@dhcp22.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210126074605.GB827@dhcp22.suse.cz>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: devicetree@vger.kernel.org, linux-media@vger.kernel.org, david@redhat.com,
 LKML <linux-kernel@vger.kernel.org>, hch@infradead.org,
 linux-mm <linux-mm@kvack.org>, robh+dt@kernel.org, john.stultz@linaro.org,
 joaodias@google.com, hridya@google.com,
 Andrew Morton <akpm@linux-foundation.org>, pullip.cho@samsung.com,
 surenb@google.com, linaro-mm-sig@lists.linaro.org, hyesoo.yu@samsung.com
Subject: Re: [Linaro-mm-sig] [PATCH v4 4/4] dma-buf: heaps: add chunk heap
	to dmabuf heaps
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

T24gVHVlLCBKYW4gMjYsIDIwMjEgYXQgMDg6NDY6MDVBTSArMDEwMCwgTWljaGFsIEhvY2tvIHdy
b3RlOgo+IE9uIFRodSAyMS0wMS0yMSAwOTo1NTowMiwgTWluY2hhbiBLaW0gd3JvdGU6Cj4gPiBG
cm9tOiBIeWVzb28gWXUgPGh5ZXNvby55dUBzYW1zdW5nLmNvbT4KPiA+IAo+ID4gVGhpcyBwYXRj
aCBzdXBwb3J0cyBjaHVuayBoZWFwIHRoYXQgYWxsb2NhdGVzIHRoZSBidWZmZXJzIHRoYXQKPiA+
IGFycmFuZ2VkIGludG8gYSBsaXN0IGEgZml4ZWQgc2l6ZSBjaHVua3MgdGFrZW4gZnJvbSBDTUEu
Cj4gPiAKPiA+IFRoZSBjaHVuayBoZWFwIGRyaXZlciBpcyBib3VuZCBkaXJlY3RseSB0byBhIHJl
c2VydmVkX21lbW9yeQo+ID4gbm9kZSBieSBmb2xsb3dpbmcgUm9iIEhlcnJpbmcncyBzdWdnZXN0
aW9uIGluIFsxXS4KPiA+IAo+ID4gWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvMjAx
OTEwMjUyMjUwMDkuNTAzMDUtMi1qb2huLnN0dWx0ekBsaW5hcm8ub3JnL1QvI20zZGM2M2FjZDMz
ZmVhMjY5YTU4NGY0M2JiNzk5YTg3NmYwYjJiNDVkCj4gCj4gV2hvIGlzIHVzaW5nIHRoaXMgYWxs
b2NhdG9yIGluIHRoZSBrZXJuZWw/CgpVc2Vyc3BhY2UgdXNlcyB0aGUgbWVtb3J5IHZpYSBtYXBw
aW5nIGl0IHZpYSBkbWFidWYuCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5h
cm8tbW0tc2lnCg==
