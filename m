Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A29D921E172
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Jul 2020 22:31:56 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D600066587
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Jul 2020 20:31:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C32586658C; Mon, 13 Jul 2020 20:31:55 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8151366588;
	Mon, 13 Jul 2020 20:31:31 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7364361932
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Jul 2020 20:31:29 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 6856366588; Mon, 13 Jul 2020 20:31:29 +0000 (UTC)
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com
 [209.85.208.49])
 by lists.linaro.org (Postfix) with ESMTPS id 673BD61932
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Jul 2020 20:31:28 +0000 (UTC)
Received: by mail-ed1-f49.google.com with SMTP id n2so14900763edr.5
 for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Jul 2020 13:31:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=HnzQkPBt2OC+k9du8OZiIZUdaNF8CWZvobQFWZtz7PY=;
 b=Ri1KnN2toRpt2cvL+qTUbpME3MtDW7Jtz1K1Q5Eeq+75NKaq6qu1Qp5xMnuc+YjpBV
 2dvmAb/huDc80Jwq81FOVNuQmBOlfdGS4xL3jvCuqnvyvIWCLjIX/EbOBI05+j7c/leL
 JlcNvkZO58OUk6gBs9XH0mKgn1djWt5wGDLGG0c1Cz6L48NEpErggaAghqBkdHGoCMn0
 HYbjz0kE0hezRrG1jVNS+z47YUerfc4WkMhU3R7IXeFjxvq7cpGgFosk4xsia/rgNBqh
 g6fLSbI4/sbU1RVg0GSmfjjy+y1n1WoK/aehu1YOoYFjA40ZxybsrpzKrVLklhOfq9Ve
 Wn9g==
X-Gm-Message-State: AOAM531nyG6aOA0RQ2OJVjwHBi6RWDDpFvWzu99uc8eIkJ2H1ONIw4cf
 hruNne3V1Q79QLMS5rQLIAFkP1PNWDQ95fmyyDY=
X-Google-Smtp-Source: ABdhPJxPAYikRaQY/XMVDWezfOW6Iwk/c5G8BcDCGjjzvlG6bojjnVvJlH11+w5rhFd3jK7dVcdAJfhqlzC5TvPI8KA=
X-Received: by 2002:a50:ee8a:: with SMTP id f10mr1094484edr.383.1594672287315; 
 Mon, 13 Jul 2020 13:31:27 -0700 (PDT)
MIME-Version: 1.0
References: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
 <20200707201229.472834-2-daniel.vetter@ffwll.ch>
 <20c0a95b-8367-4f26-d058-1cb265255283@amd.com>
 <20200713162610.GS3278063@phenom.ffwll.local>
 <e9e838fb-ec83-f7e0-e978-b57d8892b3f0@amd.com>
In-Reply-To: <e9e838fb-ec83-f7e0-e978-b57d8892b3f0@amd.com>
From: Dave Airlie <airlied@gmail.com>
Date: Tue, 14 Jul 2020 06:31:15 +1000
Message-ID: <CAPM=9tyTd0OqtdX+pGhGm3K1odNkG5EEL+0DZwL=NiVkogOujQ@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma@vger.kernel.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@intel.com>,
 amd-gfx mailing list <amd-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>, Daniel Vetter <daniel.vetter@intel.com>,
 Mika Kuoppala <mika.kuoppala@intel.com>,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH 01/25] dma-fence: basic lockdep
	annotations
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

T24gVHVlLCAxNCBKdWwgMjAyMCBhdCAwMjozOSwgQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFu
LmtvZW5pZ0BhbWQuY29tPiB3cm90ZToKPgo+IEFtIDEzLjA3LjIwIHVtIDE4OjI2IHNjaHJpZWIg
RGFuaWVsIFZldHRlcjoKPiA+IEhpIENocmlzdGlhbiwKPiA+Cj4gPiBPbiBXZWQsIEp1bCAwOCwg
MjAyMCBhdCAwNDo1NzoyMVBNICswMjAwLCBDaHJpc3RpYW4gS8O2bmlnIHdyb3RlOgo+ID4+IENv
dWxkIHdlIG1lcmdlIHRoaXMgY29udHJvbGxlZCBieSBhIHNlcGFyYXRlIGNvbmZpZyBvcHRpb24/
Cj4gPj4KPiA+PiBUaGlzIHdheSB3ZSBjb3VsZCBoYXZlIHRoZSBjaGVja3MgdXBzdHJlYW0gd2l0
aG91dCBoYXZpbmcgdG8gZml4IGFsbCB0aGUKPiA+PiBzdHVmZiBiZWZvcmUgd2UgZG8gdGhpcz8K
PiA+IERpc2N1c3Npb25zIGRpZWQgb3V0IGEgYml0LCBkbyB5b3UgY29uc2lkZXIgdGhpcyBhIGJs
b2NrZXIgZm9yIHRoZSBmaXJzdAo+ID4gdHdvIHBhdGNoZXMsIG9yIGdvb2QgZm9yIGFuIGFjayBv
biB0aGVzZT8KPgo+IFllcywgSSB0aGluayB0aGUgZmlyc3QgdHdvIGNhbiBiZSBtZXJnZWQgd2l0
aG91dCBjYXVzaW5nIGFueSBwYWluLiBGZWVsCj4gZnJlZSB0byBhZGQgbXkgYWIgb24gdGhlbS4K
Pgo+IEFuZCB0aGUgdGhpcmQgb25lIGNhbiBnbyBpbiBpbW1lZGlhdGVseSBhcyB3ZWxsLgoKQWNr
ZWQtYnk6IERhdmUgQWlybGllIDxhaXJsaWVkQHJlZGhhdC5jb20+IGZvciB0aGUgZmlyc3QgMiAr
CmluZGVmaW5pdGUgZXhwbGFpbnMuCgpEYXZlLgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlz
dGluZm8vbGluYXJvLW1tLXNpZwo=
