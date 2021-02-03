Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 67CC430D0CE
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Feb 2021 02:31:37 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8EC0B66538
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Feb 2021 01:31:36 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 800FD665C3; Wed,  3 Feb 2021 01:31:36 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 395556601F;
	Wed,  3 Feb 2021 01:31:12 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id BD0E46175A
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Feb 2021 01:31:09 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A52D16601F; Wed,  3 Feb 2021 01:31:09 +0000 (UTC)
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com
 [209.85.210.179])
 by lists.linaro.org (Postfix) with ESMTPS id 804996175A
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Feb 2021 01:31:08 +0000 (UTC)
Received: by mail-pf1-f179.google.com with SMTP id w18so15584146pfu.9
 for <linaro-mm-sig@lists.linaro.org>; Tue, 02 Feb 2021 17:31:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=T+IFulWS30TVdfKg6FbK/0wljc+JOjEQqde/nrXKzCI=;
 b=GwiSSEJih5RYc8bkeeW3H4hEMMoNtuse+Ho24z0hID1nNLx/4YB/bf70/v9tqRm47K
 RyTwidFNRTi1D4BAOL5kUMhm0OrBCloTCHQkKVmjs1xOP9m6pilTZGUeZ7284gwjzBy3
 M/zhHmv0cE6bNjpiJyzNDUSJF65IzvO4pAaBlLDu56VmPng/NTa6o1WIFDnrUK4cLzuH
 kx8oMw9jmJfT4fKtlIWoq0wXbLx8/UrN/pBCW8oqGPoeHNHDuAPzyGCpMPTK6ELm3B90
 MFhduWU267kCo27yrlnJ+I5K+7F1GLPUA8w1RvePdCXpnL0jz9y9QfHtv4CvaGWf5XrQ
 gdHA==
X-Gm-Message-State: AOAM5325EJPy7FKZ5HUogb+5VERa6uaBfV+/EwH7dUtPPt3krAc+cCXR
 ZfsdyHvYPmgS4SKhCZXhExc=
X-Google-Smtp-Source: ABdhPJz+SHeDGDiOTFr7BCLmdLVZac+uhes3CUQ3tgyGdAX3UbuwtARrizczD0kVVmAQ9gNAoPNKtA==
X-Received: by 2002:a62:f202:0:b029:1bc:a634:8e9c with SMTP id
 m2-20020a62f2020000b02901bca6348e9cmr717628pfh.49.1612315867684; 
 Tue, 02 Feb 2021 17:31:07 -0800 (PST)
Received: from google.com ([2620:15c:211:201:1502:84f8:ffc3:45b])
 by smtp.gmail.com with ESMTPSA id o20sm212189pgn.6.2021.02.02.17.31.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 02 Feb 2021 17:31:06 -0800 (PST)
Date: Tue, 2 Feb 2021 17:31:03 -0800
From: Minchan Kim <minchan@kernel.org>
To: Suren Baghdasaryan <surenb@google.com>
Message-ID: <YBn81xAeCqHgudYb@google.com>
References: <20210203003134.2422308-1-surenb@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210203003134.2422308-1-surenb@google.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linaro-mm-sig@lists.linaro.org, sspatil@google.com,
 christian.koenig@amd.com, kernel-team@android.com, jajones@nvidia.com,
 linux-kernel@vger.kernel.org, lmark@codeaurora.org, Brian.Starkey@arm.com,
 hch@infradead.org, linux-mm@kvack.org, john.stultz@linaro.org,
 dri-devel@lists.freedesktop.org, cgoldswo@codeaurora.org, hridya@google.com,
 akpm@linux-foundation.org, robin.murphy@arm.com, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 1/2] mm: replace BUG_ON in
 vm_insert_page with a return of an error
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

T24gVHVlLCBGZWIgMDIsIDIwMjEgYXQgMDQ6MzE6MzNQTSAtMDgwMCwgU3VyZW4gQmFnaGRhc2Fy
eWFuIHdyb3RlOgo+IFJlcGxhY2UgQlVHX09OKHZtYS0+dm1fZmxhZ3MgJiBWTV9QRk5NQVApIGlu
IHZtX2luc2VydF9wYWdlIHdpdGgKPiBXQVJOX09OX09OQ0UgYW5kIHJldHVybmluZyBhbiBlcnJv
ci4gVGhpcyBpcyB0byBlbnN1cmUgdXNlcnMgb2YgdGhlCj4gdm1faW5zZXJ0X3BhZ2UgdGhhdCBz
ZXQgVk1fUEZOTUFQIGFyZSBub3RpZmllZCBvZiB0aGUgd3JvbmcgZmxhZyB1c2FnZQo+IGFuZCBn
ZXQgYW4gaW5kaWNhdGlvbiBvZiBhbiBlcnJvciB3aXRob3V0IHBhbmljaW5nIHRoZSBrZXJuZWwu
Cj4gVGhpcyB3aWxsIGhlbHAgaWRlbnRpZnlpbmcgZHJpdmVycyB0aGF0IG5lZWQgdG8gY2xlYXIg
Vk1fUEZOTUFQIGJlZm9yZQo+IHVzaW5nIGRtYWJ1ZiBzeXN0ZW0gaGVhcCB3aGljaCBpcyBtb3Zp
bmcgdG8gdXNlIHZtX2luc2VydF9wYWdlLgo+IAo+IFN1Z2dlc3RlZC1ieTogQ2hyaXN0b3BoIEhl
bGx3aWcgPGhjaEBpbmZyYWRlYWQub3JnPgo+IFNpZ25lZC1vZmYtYnk6IFN1cmVuIEJhZ2hkYXNh
cnlhbiA8c3VyZW5iQGdvb2dsZS5jb20+Cj4gLS0tCj4gIG1tL21lbW9yeS5jIHwgMyArKy0KPiAg
MSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYg
LS1naXQgYS9tbS9tZW1vcnkuYyBiL21tL21lbW9yeS5jCj4gaW5kZXggZmVmZjQ4ZTE0NjVhLi5l
NTAzYzk4MDFjZDkgMTAwNjQ0Cj4gLS0tIGEvbW0vbWVtb3J5LmMKPiArKysgYi9tbS9tZW1vcnku
Ywo+IEBAIC0xODI3LDcgKzE4MjcsOCBAQCBpbnQgdm1faW5zZXJ0X3BhZ2Uoc3RydWN0IHZtX2Fy
ZWFfc3RydWN0ICp2bWEsIHVuc2lnbmVkIGxvbmcgYWRkciwKPiAgCQlyZXR1cm4gLUVJTlZBTDsK
PiAgCWlmICghKHZtYS0+dm1fZmxhZ3MgJiBWTV9NSVhFRE1BUCkpIHsKPiAgCQlCVUdfT04obW1h
cF9yZWFkX3RyeWxvY2sodm1hLT52bV9tbSkpOwoKQmV0dGVyIHRvIHJlcGxhY2UgYWJvdmUgQlVH
X09OIHdpdGggV0FSTl9PTl9PTkNFLCB0b28/Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1z
aWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW5hcm8tbW0tc2lnCg==
