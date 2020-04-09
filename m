Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E2E9D1A2E1F
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Apr 2020 06:00:02 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0AB8566626
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  9 Apr 2020 04:00:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id ECAA266631; Thu,  9 Apr 2020 04:00:01 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1C6216661F;
	Thu,  9 Apr 2020 03:59:29 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 04169664E3
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Apr 2020 03:59:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id EA79A6661F; Thu,  9 Apr 2020 03:59:26 +0000 (UTC)
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com
 [209.85.210.68])
 by lists.linaro.org (Postfix) with ESMTPS id EB24E664E3
 for <linaro-mm-sig@lists.linaro.org>; Thu,  9 Apr 2020 03:59:25 +0000 (UTC)
Received: by mail-ot1-f68.google.com with SMTP id q2so6367994otk.7
 for <linaro-mm-sig@lists.linaro.org>; Wed, 08 Apr 2020 20:59:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XmvlzvuP/vnjEDUAwKX6NbPh583pohCBXmnvTfFr87o=;
 b=uN5jU9mCau2p4fMRIV5wEnj06Tb9VYjO4Bz5NgzYsM50ddVOymTzNJM6dnlrU+iT9a
 FOUpN9MBT0TXXGjNwrO9e/imFrjoiclGSGoRZO+NyNYeYgTOLsupsfm1v2rriKNNlA3G
 fZUU8J6PWS9H0+/mPtMgFMRmcLMwvM80irAdc9QIZ8lYhcSdvF3t4ZaaydoKBB2fRimO
 0GPhdnDmu+krv/jrTNKhVFG00aMN85DwCsLz9DInZVTOyxma/mtZbBykDjjQ6APrYLGL
 bZ1eBIPg4DHnc6tqfsbUEWCprMVSQdSQlvo39PjKDsmFCOFxOo/cPxfP3dFcO4r+K8e/
 HQag==
X-Gm-Message-State: AGi0PuYIuIJJFPExS57jvv6fEBP1rFSUuRPiAJkHEwIG8jc1RTaJIgGG
 0AUVxITaUOmAy3nmQVMGyqEiX9gwaxNU3S8V+BeS9Bj4
X-Google-Smtp-Source: APiQypIL+VSKtQqdwmZy4oiaXjGpHl/0mTLNWmmy5b0h+TbJd0NijtQXz9X0wf4utwLodwHw+mkZqIhkKaDKK9J/bMo=
X-Received: by 2002:a05:6830:1e79:: with SMTP id
 m25mr8202815otr.36.1586404765365; 
 Wed, 08 Apr 2020 20:59:25 -0700 (PDT)
MIME-Version: 1.0
References: <7bcbe6fe-0b4b-87da-d003-b68a26eb4cf0@infradead.org>
In-Reply-To: <7bcbe6fe-0b4b-87da-d003-b68a26eb4cf0@infradead.org>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Thu, 9 Apr 2020 09:29:13 +0530
Message-ID: <CAO_48GHuPAMgnbPDHgZs3kd=xDXssBD+H8-xi3zR4nSgsA1hdQ@mail.gmail.com>
To: Randy Dunlap <rdunlap@infradead.org>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: "moderated list:DMA BUFFER SHARING FRAMEWORK"
 <linaro-mm-sig@lists.linaro.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH -next] dma-buf: fix documentation build
	warnings
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

SGVsbG8gUmFuZHksCgoKT24gV2VkLCA4IEFwciAyMDIwIGF0IDA5OjUwLCBSYW5keSBEdW5sYXAg
PHJkdW5sYXBAaW5mcmFkZWFkLm9yZz4gd3JvdGU6Cj4KPiBGcm9tOiBSYW5keSBEdW5sYXAgPHJk
dW5sYXBAaW5mcmFkZWFkLm9yZz4KPgo+IEZpeCBkb2N1bWVudGF0aW9uIHdhcm5pbmdzIGluIGRt
YS1idWYuW2hjXToKClRoYW5rIHlvdSBmb3IgeW91ciBwYXRjaDsgSSB3aWxsIGFwcGx5IGl0IHRv
IGRybS1taXNjIHRyZWUuCj4KPiAuLi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jOjY3ODogd2Fy
bmluZzogRnVuY3Rpb24gcGFyYW1ldGVyIG9yIG1lbWJlciAnaW1wb3J0ZXJfb3BzJyBub3QgZGVz
Y3JpYmVkIGluICdkbWFfYnVmX2R5bmFtaWNfYXR0YWNoJwo+IC4uL2RyaXZlcnMvZG1hLWJ1Zi9k
bWEtYnVmLmM6Njc4OiB3YXJuaW5nOiBGdW5jdGlvbiBwYXJhbWV0ZXIgb3IgbWVtYmVyICdpbXBv
cnRlcl9wcml2JyBub3QgZGVzY3JpYmVkIGluICdkbWFfYnVmX2R5bmFtaWNfYXR0YWNoJwo+IC4u
L2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oOjMzOTogd2FybmluZzogSW5jb3JyZWN0IHVzZSBvZiBr
ZXJuZWwtZG9jIGZvcm1hdDogICAgICAgICAgKiBAbW92ZV9ub3RpZnkKPgo+IFNpZ25lZC1vZmYt
Ynk6IFJhbmR5IER1bmxhcCA8cmR1bmxhcEBpbmZyYWRlYWQub3JnPgo+IENjOiBTdW1pdCBTZW13
YWwgPHN1bWl0LnNlbXdhbEBsaW5hcm8ub3JnPgo+IENjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5l
bC5vcmcKPiBDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IENjOiBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKPiAtLS0KPiAgZHJpdmVycy9kbWEtYnVmL2RtYS1idWYu
YyB8ICAgIDQgKystLQo+ICBpbmNsdWRlL2xpbnV4L2RtYS1idWYuaCAgIHwgICAgMyArLS0KPiAg
MiBmaWxlcyBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4KPiAtLS0g
bGludXgtbmV4dC0yMDIwMDQwNy5vcmlnL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKPiArKysg
bGludXgtbmV4dC0yMDIwMDQwNy9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCj4gQEAgLTY1NSw4
ICs2NTUsOCBAQCBFWFBPUlRfU1lNQk9MX0dQTChkbWFfYnVmX3B1dCk7Cj4gICAqIGNhbGxzIGF0
dGFjaCgpIG9mIGRtYV9idWZfb3BzIHRvIGFsbG93IGRldmljZS1zcGVjaWZpYyBhdHRhY2ggZnVu
Y3Rpb25hbGl0eQo+ICAgKiBAZG1hYnVmOiAgICAgICAgICAgIFtpbl0gICAgYnVmZmVyIHRvIGF0
dGFjaCBkZXZpY2UgdG8uCj4gICAqIEBkZXY6ICAgICAgICAgICAgICAgW2luXSAgICBkZXZpY2Ug
dG8gYmUgYXR0YWNoZWQuCj4gLSAqIEBpbXBvcnRlcl9vcHMgICAgICAgW2luXSAgICBpbXBvcnRl
ciBvcGVyYXRpb25zIGZvciB0aGUgYXR0YWNobWVudAo+IC0gKiBAaW1wb3J0ZXJfcHJpdiAgICAg
IFtpbl0gICAgaW1wb3J0ZXIgcHJpdmF0ZSBwb2ludGVyIGZvciB0aGUgYXR0YWNobWVudAo+ICsg
KiBAaW1wb3J0ZXJfb3BzOiAgICAgIFtpbl0gICAgaW1wb3J0ZXIgb3BlcmF0aW9ucyBmb3IgdGhl
IGF0dGFjaG1lbnQKPiArICogQGltcG9ydGVyX3ByaXY6ICAgICBbaW5dICAgIGltcG9ydGVyIHBy
aXZhdGUgcG9pbnRlciBmb3IgdGhlIGF0dGFjaG1lbnQKPiAgICoKPiAgICogUmV0dXJucyBzdHJ1
Y3QgZG1hX2J1Zl9hdHRhY2htZW50IHBvaW50ZXIgZm9yIHRoaXMgYXR0YWNobWVudC4gQXR0YWNo
bWVudHMKPiAgICogbXVzdCBiZSBjbGVhbmVkIHVwIGJ5IGNhbGxpbmcgZG1hX2J1Zl9kZXRhY2go
KS4KPiAtLS0gbGludXgtbmV4dC0yMDIwMDQwNy5vcmlnL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5o
Cj4gKysrIGxpbnV4LW5leHQtMjAyMDA0MDcvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgKPiBAQCAt
MzI5LDEzICszMjksMTIgQEAgc3RydWN0IGRtYV9idWYgewo+Cj4gIC8qKgo+ICAgKiBzdHJ1Y3Qg
ZG1hX2J1Zl9hdHRhY2hfb3BzIC0gaW1wb3J0ZXIgb3BlcmF0aW9ucyBmb3IgYW4gYXR0YWNobWVu
dAo+IC0gKiBAbW92ZV9ub3RpZnk6IFtvcHRpb25hbF0gbm90aWZpY2F0aW9uIHRoYXQgdGhlIERN
QS1idWYgaXMgbW92aW5nCj4gICAqCj4gICAqIEF0dGFjaG1lbnQgb3BlcmF0aW9ucyBpbXBsZW1l
bnRlZCBieSB0aGUgaW1wb3J0ZXIuCj4gICAqLwo+ICBzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2hfb3Bz
IHsKPiAgICAgICAgIC8qKgo+IC0gICAgICAgICogQG1vdmVfbm90aWZ5Cj4gKyAgICAgICAgKiBA
bW92ZV9ub3RpZnk6IFtvcHRpb25hbF0gbm90aWZpY2F0aW9uIHRoYXQgdGhlIERNQS1idWYgaXMg
bW92aW5nCj4gICAgICAgICAgKgo+ICAgICAgICAgICogSWYgdGhpcyBjYWxsYmFjayBpcyBwcm92
aWRlZCB0aGUgZnJhbWV3b3JrIGNhbiBhdm9pZCBwaW5uaW5nIHRoZQo+ICAgICAgICAgICogYmFj
a2luZyBzdG9yZSB3aGlsZSBtYXBwaW5ncyBleGlzdHMuCj4KCkJlc3QsClN1bWl0LgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5s
aW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
