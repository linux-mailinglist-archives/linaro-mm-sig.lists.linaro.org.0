Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E472DD973
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Dec 2020 20:41:20 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C27DE665E3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 17 Dec 2020 19:41:19 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B65AB666D3; Thu, 17 Dec 2020 19:41:19 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 465EA665FF;
	Thu, 17 Dec 2020 19:40:54 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D33C960831
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Dec 2020 19:40:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C62E3665FF; Thu, 17 Dec 2020 19:40:50 +0000 (UTC)
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com
 [209.85.167.47])
 by lists.linaro.org (Postfix) with ESMTPS id 4767C665E3
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Dec 2020 19:40:49 +0000 (UTC)
Received: by mail-lf1-f47.google.com with SMTP id a9so60595599lfh.2
 for <linaro-mm-sig@lists.linaro.org>; Thu, 17 Dec 2020 11:40:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=q8co+g7fqtv1R652W4I2zAoCxF1rMu+SazXF7/blE/U=;
 b=ec9wvo/TRj6ObaODvjJgtGeRZzvq8sm/Sz68aWh68Xoymk2jzxkv5ZauhCJMX2X/L8
 YI5rqsXxw7WjRv4kYOWvL/4QEQJE10uZPk+S4bCrBBviuikk3mc3BTbqG/htRkeBdshP
 IRbL0LRnQ5pwlA629742ML3UfIeCAHSF8l82+YAF7PWo0uqF/BLjrn0T9z2Qm/If9nyx
 2vJRihtBLXgLTJeanLZLF7Jntk8sBivooxu2KbyTvh59WsSTbYz2YY3eQKizrkjIrxss
 mIUfY3QtxPyhDagb4+wYKFhIu0XfA3o0VaFDONMb1VlQwELmBTE+Win59XZ1pVn94IUI
 cYXw==
X-Gm-Message-State: AOAM533m9bnlVwVi+iyjSegFzbNDJ6aFU9B3P+XezaVAHNv4czGNl7M6
 96AhwbJTQZ2CdicBQbMTENgTheehx6syUkAsOE0s5E+u
X-Google-Smtp-Source: ABdhPJyoxlYF6cA7yW0ADQXLLbDXp4SbBvfrxe+y5InSW7WfeoagGLAqOVcdA6uvNnjcrreaKO7zIKYkZ32rMSlVSlI=
X-Received: by 2002:a2e:3506:: with SMTP id z6mr391593ljz.257.1608234048140;
 Thu, 17 Dec 2020 11:40:48 -0800 (PST)
MIME-Version: 1.0
References: <20201217123053.2166511-1-siyanteng01@gmail.com>
In-Reply-To: <20201217123053.2166511-1-siyanteng01@gmail.com>
From: John Stultz <john.stultz@linaro.org>
Date: Thu, 17 Dec 2020 11:40:37 -0800
Message-ID: <CALAqxLW_zQZi=x9PXb9Uf+gPntm=5Q8vDWa_Gs+TjHbyqu_dZQ@mail.gmail.com>
To: siyanteng01@gmail.com
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Brian Starkey <Brian.Starkey@arm.com>, lkml <linux-kernel@vger.kernel.org>,
 Liam Mark <lmark@codeaurora.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH] cma_heap: fix implicit function
	declaration
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

T24gVGh1LCBEZWMgMTcsIDIwMjAgYXQgNDozMSBBTSA8c2l5YW50ZW5nMDFAZ21haWwuY29tPiB3
cm90ZToKPgo+IEZyb206IHNpeWFudGVuZyA8c2l5YW50ZW5nMDFAZ21haWwuY29tPgo+Cj4gV2hl
biBidWlsZGluZyBjbWFfaGVhcCB0aGUgZm9sbG93aW5nIGVycm9yIHNob3dzIHVwOgo+Cj4gZHJp
dmVycy9kbWEtYnVmL2hlYXBzL2NtYV9oZWFwLmM6MTk1OjEwOiBlcnJvcjogaW1wbGljaXQgZGVj
bGFyYXRpb24gb2YgZnVuY3Rpb24gJ3ZtYXAnOyBkaWQgeW91IG1lYW4gJ2ttYXAnPyBbLVdlcnJv
cj1pbXBsaWNpdC1mdW5jdGlvbi1kZWNsYXJhdGlvbl0KPiAxOTUgfCAgdmFkZHIgPSB2bWFwKGJ1
ZmZlci0+cGFnZXMsIGJ1ZmZlci0+cGFnZWNvdW50LCBWTV9NQVAsIFBBR0VfS0VSTkVMKTsKPiAg
ICAgfCAgICAgICAgICBefn5+Cj4gICAgIHwgICAgICAgICAga21hcAo+Cj4gVXNlIHRoaXMgaW5j
bHVkZTogbGludXgtbmV4dC9pbmNsdWRlL2xpbnV4L3ZtYWxsb2MuaAo+Cj4gU2lnbmVkLW9mZi1i
eTogc2l5YW50ZW5nIDxzaXlhbnRlbmcwMUBnbWFpbC5jb20+CgpUaGFua3MgZm9yIHN1Ym1pdHRp
bmcgdGhpcyEgTXkgYXBvbG9naWVzIGZvciB0aGUgdHJvdWJsZSEKCldlIGFscmVhZHkgaGF2ZSBh
IHNpbWlsYXIgcGF0Y2ggcXVldWVkIGhlcmU6CiAgaHR0cHM6Ly9jZ2l0LmZyZWVkZXNrdG9wLm9y
Zy9kcm0vZHJtLW1pc2MvY29tbWl0Lz9oPWRybS1taXNjLW5leHQtZml4ZXMmaWQ9ODA3NWMzMDA1
ZTRiMWVmYTEyZGJiZjZlODRiYzQxMmE3MTNkZTkyYwpzbyBob3BlZnVsbHkgdGhhdCB3aWxsIGxh
bmQgdXBzdHJlYW0gc29vbi4KCnRoYW5rcyBhZ2FpbiEKLWpvaG4KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QK
TGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
