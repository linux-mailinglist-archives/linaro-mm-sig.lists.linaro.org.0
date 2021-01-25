Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 4349F302BD5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 25 Jan 2021 20:43:11 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5821666758
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 25 Jan 2021 19:43:10 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4AE946672A; Mon, 25 Jan 2021 19:43:10 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 76777665E4;
	Mon, 25 Jan 2021 19:42:42 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D800D607FD
 for <linaro-mm-sig@lists.linaro.org>; Mon, 25 Jan 2021 19:42:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id CB3A8665E4; Mon, 25 Jan 2021 19:42:39 +0000 (UTC)
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com
 [209.85.216.44])
 by lists.linaro.org (Postfix) with ESMTPS id A7E32607FD
 for <linaro-mm-sig@lists.linaro.org>; Mon, 25 Jan 2021 19:42:38 +0000 (UTC)
Received: by mail-pj1-f44.google.com with SMTP id my11so270426pjb.1
 for <linaro-mm-sig@lists.linaro.org>; Mon, 25 Jan 2021 11:42:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=5fVcl4vKZHTggDm2blzFERgcHQ62HSz/1Q2cJ06nrTg=;
 b=n5g1LPTrHxoKQqn7k/GN3sQpyCrx/ZClz06C5HfjaUWivOlm2Ip6aa1B8W7x6V2Xxs
 62ILJ55EhuxZGbYiThfj45VIlPBnihoFjFxf8ZLN9GiVSR8bl6FCo/6IGrSYShjjWNrr
 vw6csiNIThj6gqqsKK3rJn5z70SFWgXofZqeOah0o1hXSrMR75GilCGpl1Uf7ZsPC52y
 917iMDvpEzvv/hhMqHBGi0vnzGN2XtcbMKndF52EWEWkZRVskHB0uGw5qBpIsQSxtyn2
 AH6xdBa+Zg++xOHCUPovK17WC0Qb4GuLfLtWs7vGZBtpuThhDilzsh/+MAnea6VPY9LW
 FQjw==
X-Gm-Message-State: AOAM533rO9kEjpbO/oChsznT+EVFy+KUJRn9bAbV8LgIDqR7T3F8REqW
 M/Z/4Z2h1OnwLjCL8JvKJes=
X-Google-Smtp-Source: ABdhPJwT/YZ72o8PzSOo3q/xaeqNAkBX8xQi8IOdnfyF1Y2kFh41Roa9xrm8PNLtM8E9l0D9llOWOA==
X-Received: by 2002:a17:90a:7e90:: with SMTP id
 j16mr1784454pjl.163.1611603757872; 
 Mon, 25 Jan 2021 11:42:37 -0800 (PST)
Received: from google.com ([2620:15c:211:201:e8b4:4688:79de:94f3])
 by smtp.gmail.com with ESMTPSA id h6sm17733599pfr.47.2021.01.25.11.42.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Jan 2021 11:42:36 -0800 (PST)
Date: Mon, 25 Jan 2021 11:42:34 -0800
From: Minchan Kim <minchan@kernel.org>
To: Michal Hocko <mhocko@suse.com>
Message-ID: <YA8fKgFLuOi/rSez@google.com>
References: <20210121175502.274391-1-minchan@kernel.org>
 <20210121175502.274391-2-minchan@kernel.org>
 <20210125130701.GF827@dhcp22.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210125130701.GF827@dhcp22.suse.cz>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: devicetree@vger.kernel.org, linux-media@vger.kernel.org, david@redhat.com,
 LKML <linux-kernel@vger.kernel.org>, hch@infradead.org,
 linux-mm <linux-mm@kvack.org>, robh+dt@kernel.org, john.stultz@linaro.org,
 joaodias@google.com, hridya@google.com,
 Andrew Morton <akpm@linux-foundation.org>, pullip.cho@samsung.com,
 surenb@google.com, linaro-mm-sig@lists.linaro.org, hyesoo.yu@samsung.com
Subject: Re: [Linaro-mm-sig] [PATCH v4 1/4] mm: cma: introduce gfp flag in
 cma_alloc instead of no_warn
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

T24gTW9uLCBKYW4gMjUsIDIwMjEgYXQgMDI6MDc6MDFQTSArMDEwMCwgTWljaGFsIEhvY2tvIHdy
b3RlOgo+IE9uIFRodSAyMS0wMS0yMSAwOTo1NDo1OSwgTWluY2hhbiBLaW0gd3JvdGU6Cj4gPiBU
aGUgdXBjb21pbmcgcGF0Y2ggd2lsbCBpbnRyb2R1Y2UgX19HRlBfTk9SRVRSWSBzZW1hbnRpYwo+
ID4gaW4gYWxsb2NfY29udGlnX3JhbmdlIHdoaWNoIGlzIGEgZmFpbGZhc3QgbW9kZSBvZiB0aGUg
QVBJLgo+ID4gSW5zdGVhZCBvZiBhZGRpbmcgYSBhZGRpdGlvbmFsIHBhcmFtZXRlciBmb3IgZ2Zw
LCByZXBsYWNlCj4gPiBub193YXJuIHdpdGggZ2ZwIGZsYWcuCj4gPiAKPiA+IFRvIGtlZXAgb2xk
IGJlaGF2aW9ycywgaXQgZm9sbG93cyB0aGUgcnVsZSBiZWxvdy4KPiA+IAo+ID4gICBub193YXJu
IAkJCWdmcF9mbGFncwo+ID4gCj4gPiAgIGZhbHNlICAgICAgICAgCQlHRlBfS0VSTkVMCj4gPiAg
IHRydWUgICAgICAgICAgCQlHRlBfS0VSTkVMfF9fR0ZQX05PV0FSTgo+ID4gICBnZnAgJiBfX0dG
UF9OT1dBUk4JCUdGUF9LRVJORUwgfCAoZ2ZwICYgX19HRlBfTk9XQVJOKQo+ID4gCj4gPiBSZXZp
ZXdlZC1ieTogU3VyZW4gQmFnaGRhc2FyeWFuIDxzdXJlbmJAZ29vZ2xlLmNvbT4KPiA+IFNpZ25l
ZC1vZmYtYnk6IE1pbmNoYW4gS2ltIDxtaW5jaGFuQGtlcm5lbC5vcmc+Cj4gWy4uLl0KPiA+IGRp
ZmYgLS1naXQgYS9tbS9jbWEuYyBiL21tL2NtYS5jCj4gPiBpbmRleCAwYmE2OWNkMTZhZWIuLmQ1
MDYyNzY4NmZlYyAxMDA2NDQKPiA+IC0tLSBhL21tL2NtYS5jCj4gPiArKysgYi9tbS9jbWEuYwo+
ID4gQEAgLTQxOSwxMyArNDE5LDEzIEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBjbWFfZGVidWdfc2hv
d19hcmVhcyhzdHJ1Y3QgY21hICpjbWEpIHsgfQo+ID4gICAqIEBjbWE6ICAgQ29udGlndW91cyBt
ZW1vcnkgcmVnaW9uIGZvciB3aGljaCB0aGUgYWxsb2NhdGlvbiBpcyBwZXJmb3JtZWQuCj4gPiAg
ICogQGNvdW50OiBSZXF1ZXN0ZWQgbnVtYmVyIG9mIHBhZ2VzLgo+ID4gICAqIEBhbGlnbjogUmVx
dWVzdGVkIGFsaWdubWVudCBvZiBwYWdlcyAoaW4gUEFHRV9TSVpFIG9yZGVyKS4KPiA+IC0gKiBA
bm9fd2FybjogQXZvaWQgcHJpbnRpbmcgbWVzc2FnZSBhYm91dCBmYWlsZWQgYWxsb2NhdGlvbgo+
ID4gKyAqIEBnZnBfbWFzazogR0ZQIG1hc2sgdG8gdXNlIGR1cmluZyB0aGUgY21hIGFsbG9jYXRp
b24uCj4gCj4gQ2FsbCBvdXQgc3VwcG9ydGVkIGdmcCBmbGFncyBleHBsaWNpdGx5LiBIYXZlIGEg
bG9vayBhdCBrdm1hbGxvY19ub2RlCj4gZm9yIGEgZ3VpZGFuY2UuCgpIb3cgYWJvdXQgdGhpcz8K
CgpkaWZmIC0tZ2l0IGEvbW0vY21hLmMgYi9tbS9jbWEuYwppbmRleCBkNTA2Mjc2ODZmZWMuLmI5
NDcyN2I2OTRkNiAxMDA2NDQKLS0tIGEvbW0vY21hLmMKKysrIGIvbW0vY21hLmMKQEAgLTQyMyw2
ICs0MjMsMTAgQEAgc3RhdGljIGlubGluZSB2b2lkIGNtYV9kZWJ1Z19zaG93X2FyZWFzKHN0cnVj
dCBjbWEgKmNtYSkgeyB9CiAgKgogICogVGhpcyBmdW5jdGlvbiBhbGxvY2F0ZXMgcGFydCBvZiBj
b250aWd1b3VzIG1lbW9yeSBvbiBzcGVjaWZpYwogICogY29udGlndW91cyBtZW1vcnkgYXJlYS4K
KyAqCisgKiBGb3IgZ2ZwX21hc2ssIEdGUF9LRVJORUwgYW5kIF9fR0ZQX05PUkVUUlkgYXJlIHN1
cHBvcnRlZC4gX19HRlBfTk9SRVRSWQorICogd2lsbCBhdm9pZCBjb3N0bHkgZnVuY3Rpb25zKGUu
Zy4sIHdhaXRpbmcgb24gcGFnZV93cml0ZWJhY2sgYW5kIGxvY2tpbmcpCisgKiBhdCBjdXJyZW50
IGltcGxlbWVudGFpb24gZHVyaW5nIHRoZSBwYWdlIG1pZ3JhdGlvbi4KICAqLwogc3RydWN0IHBh
Z2UgKmNtYV9hbGxvYyhzdHJ1Y3QgY21hICpjbWEsIHNpemVfdCBjb3VudCwgdW5zaWduZWQgaW50
IGFsaWduLAogICAgICAgICAgICAgICAgICAgICAgIGdmcF90IGdmcF9tYXNrKQoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWls
aW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGlu
YXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
