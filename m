Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E6226FD84
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 18 Sep 2020 14:49:39 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 987686093B
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 18 Sep 2020 12:49:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 8C19060C0C; Fri, 18 Sep 2020 12:49:38 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C38C36096F;
	Fri, 18 Sep 2020 12:48:56 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9E5C3608DF
 for <linaro-mm-sig@lists.linaro.org>; Fri, 18 Sep 2020 12:48:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 935936094E; Fri, 18 Sep 2020 12:48:53 +0000 (UTC)
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by lists.linaro.org (Postfix) with ESMTPS id 23CFA608DF
 for <linaro-mm-sig@lists.linaro.org>; Fri, 18 Sep 2020 12:48:52 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id k18so5452053wmj.5
 for <linaro-mm-sig@lists.linaro.org>; Fri, 18 Sep 2020 05:48:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to;
 bh=XApl2kYt9xUmRP5psUkQBhn2GDFKQJu7UH6yAt3QUWA=;
 b=bQjYWXAKX1cRBnkTT1n1QWOp4OA0mZElqPNNrD124FWRaUSnUcWm3WWLFHwCicRgQu
 BHEFXOe0ghBKShbsM2fLUBGN14p4eOXYDeJgidSvRT1gMF4nuwDmfFo0Wiblhda8ihe2
 RXc3Vot3pmMVY7IulQPVaPqpKhXbRdzRq/0SUWdYi0lBZbhWlQ+f40E6eddVK+axK1xa
 SiSxvOYzgRNuBI2/K8GbI6Iz4Z/oCMfDzyIrnjpD5iNTQ0GaNbzUCL/e/VnyKiQPZoKu
 LxxWPDfKlM7eACneaPAR2cIWj/e/zYXB2pDvpLiRCff9HG1QaaoExyi1DhZPXyJmIfR+
 3yvQ==
X-Gm-Message-State: AOAM530ixalccZG+Fq1PTthm6BAGGbtx06GZq+rm1BZIyHKg9M5YZDmG
 Gnk4KY+bwZNB08OOMgaQmQeptw==
X-Google-Smtp-Source: ABdhPJws4fdJlwAFRicyfASJ6sKqsyVx8I56ikTXgryM1sw8YM3g8WD8s8WEkijsL4e0bWaUa5+i4w==
X-Received: by 2002:a7b:cd05:: with SMTP id f5mr15140544wmj.116.1600433331211; 
 Fri, 18 Sep 2020 05:48:51 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id p11sm4881656wma.11.2020.09.18.05.48.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Sep 2020 05:48:50 -0700 (PDT)
Date: Fri, 18 Sep 2020 14:48:48 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Message-ID: <20200918124848.GE438822@phenom.ffwll.local>
Mail-Followup-To: Christian =?iso-8859-1?Q?K=F6nig?=
 <christian.koenig@amd.com>, 
 Charan Teja Reddy <charante@codeaurora.org>,
 sumit.semwal@linaro.org, arnd@arndb.de,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org, vinmenon@codeaurora.org,
 dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org
References: <1600425151-27670-1-git-send-email-charante@codeaurora.org>
 <7a4a51fb-008b-cd64-35e7-2a2765b2c3a6@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7a4a51fb-008b-cd64-35e7-2a2765b2c3a6@amd.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: arnd@arndb.de, linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org, vinmenon@codeaurora.org,
 Charan Teja Reddy <charante@codeaurora.org>, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH] dmabuf: fix NULL pointer dereference in
	dma_buf_release()
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

T24gRnJpLCBTZXAgMTgsIDIwMjAgYXQgMDE6MTY6MTZQTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToKPiBBbSAxOC4wOS4yMCB1bSAxMjozMiBzY2hyaWViIENoYXJhbiBUZWphIFJlZGR5
Ogo+ID4gTlVMTCBwb2ludGVyIGRlcmVmZXJlbmNlIGlzIG9ic2VydmVkIHdoaWxlIGV4cG9ydGlu
ZyB0aGUgZG1hYnVmIGJ1dAo+ID4gZmFpbGVkIHRvIGFsbG9jYXRlIHRoZSAnc3RydWN0IGZpbGUn
IHdoaWNoIHJlc3VsdHMgaW50byB0aGUgZHJvcHBpbmcgb2YKPiA+IHRoZSBhbGxvY2F0ZWQgZGVu
dHJ5IGNvcnJlc3BvbmRpbmcgdG8gdGhpcyBmaWxlIGluIHRoZSBkbWFidWYgZnMsIHdoaWNoCj4g
PiBpcyBlbmRpbmcgdXAgaW4gZG1hX2J1Zl9yZWxlYXNlKCkgYW5kIGFjY2Vzc2luZyB0aGUgdW5p
bml0aWFsemVkCj4gPiBkZW50cnktPmRfZnNkYXRhLgo+ID4gCj4gPiBDYWxsIHN0YWNrIG9uIDUu
NCBpcyBiZWxvdzoKPiA+ICAgZG1hX2J1Zl9yZWxlYXNlKzB4MmMvMHgyNTQgZHJpdmVycy9kbWEt
YnVmL2RtYS1idWYuYzo4OAo+ID4gICBfX2RlbnRyeV9raWxsKzB4Mjk0LzB4MzFjIGZzL2RjYWNo
ZS5jOjU4NAo+ID4gICBkZW50cnlfa2lsbCBmcy9kY2FjaGUuYzo2NzMgW2lubGluZV0KPiA+ICAg
ZHB1dCsweDI1MC8weDM4MCBmcy9kY2FjaGUuYzo4NTkKPiA+ICAgcGF0aF9wdXQrMHgyNC8weDQw
IGZzL25hbWVpLmM6NDg1Cj4gPiAgIGFsbG9jX2ZpbGVfcHNldWRvKzB4MWE0LzB4MjAwIGZzL2Zp
bGVfdGFibGUuYzoyMzUKPiA+ICAgZG1hX2J1Zl9nZXRmaWxlIGRyaXZlcnMvZG1hLWJ1Zi9kbWEt
YnVmLmM6NDczIFtpbmxpbmVdCj4gPiAgIGRtYV9idWZfZXhwb3J0KzB4MjVjLzB4M2VjIGRyaXZl
cnMvZG1hLWJ1Zi9kbWEtYnVmLmM6NTg1Cj4gPiAKPiA+IEZpeCB0aGlzIGJ5IGNoZWNraW5nIGZv
ciB0aGUgdmFsaWQgcG9pbnRlciBpbiB0aGUgZGVudHJ5LT5kX2ZzZGF0YS4KPiA+IAo+ID4gRml4
ZXM6IDRhYjU5YzNjNjM4YyAoImRtYS1idWY6IE1vdmUgZG1hX2J1Zl9yZWxlYXNlKCkgZnJvbSBm
b3BzIHRvIGRlbnRyeV9vcHMiKQo+ID4gQ2M6IDxzdGFibGVAdmdlci5rZXJuZWwub3JnPiBbNS43
K10KPiA+IFNpZ25lZC1vZmYtYnk6IENoYXJhbiBUZWphIFJlZGR5IDxjaGFyYW50ZUBjb2RlYXVy
b3JhLm9yZz4KPiAKPiBSZXZpZXdlZC1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFuLmtv
ZW5pZ0BhbWQuY29tPgo+IAo+IEdvaW5nIHRvIHBpY2sgdGhpcyB1cCBmb3IgaW5jbHVzaW9uIGlu
dG8gZHJtLW1pc2MtbmV4dCBhcyB3ZWxsLgoKZHJtLW1pc2MtZml4ZXMgc2luY2UgdGhpcyBpcyBh
IGJ1Z2ZpeCB0aGF0IG5lZWRzIHRvIGJlIGJhY2twb3J0ZWQuCi1EYW5pZWwKCj4gCj4gPiAtLS0K
PiA+ICAgZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyB8IDIgKysKPiA+ICAgMSBmaWxlIGNoYW5n
ZWQsIDIgaW5zZXJ0aW9ucygrKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVm
L2RtYS1idWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKPiA+IGluZGV4IDU4NTY0ZDgy
Li44NDQ5NjdmIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwo+ID4g
KysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwo+ID4gQEAgLTU5LDYgKzU5LDggQEAgc3Rh
dGljIHZvaWQgZG1hX2J1Zl9yZWxlYXNlKHN0cnVjdCBkZW50cnkgKmRlbnRyeSkKPiA+ICAgCXN0
cnVjdCBkbWFfYnVmICpkbWFidWY7Cj4gPiAgIAlkbWFidWYgPSBkZW50cnktPmRfZnNkYXRhOwo+
ID4gKwlpZiAodW5saWtlbHkoIWRtYWJ1ZikpCj4gPiArCQlyZXR1cm47Cj4gPiAgIAlCVUdfT04o
ZG1hYnVmLT52bWFwcGluZ19jb3VudGVyKTsKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+IGRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKPiBkcmktZGV2
ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwKCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVu
Z2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5h
cm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
