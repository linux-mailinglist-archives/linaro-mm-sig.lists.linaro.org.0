Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 53FCE3258A3
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Feb 2021 22:29:44 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 865E3667BC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Feb 2021 21:29:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 7AB91667C8; Thu, 25 Feb 2021 21:29:43 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E947166792;
	Thu, 25 Feb 2021 21:29:15 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 5DA196678A
 for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Feb 2021 21:29:13 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 4E56466792; Thu, 25 Feb 2021 21:29:13 +0000 (UTC)
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com
 [209.85.167.174])
 by lists.linaro.org (Postfix) with ESMTPS id 445096678A
 for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Feb 2021 21:29:12 +0000 (UTC)
Received: by mail-oi1-f174.google.com with SMTP id f3so7555558oiw.13
 for <linaro-mm-sig@lists.linaro.org>; Thu, 25 Feb 2021 13:29:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vNmAJW/zyB5XEgw8h6FvBxPzYo4y5t37treLZpDOceo=;
 b=nwUyFsLu1uTYD7w1l1vSRPaBF+Y+sg5qgxI6wiuQkueAVSx95rs4P1kJ0xDk17Fuw0
 akvV/e/yv99i438/7DrRzVO/1nmR/CzDjNqAWoM3mjnc2iOPGXmNHlvKUDZ6QsPydBzd
 qGcNvcrUCX5MvsfOVy8uomE3PBSvbpmDmd440GZK0mkuqJVJaekKcu//XxTeBYMeJ8be
 n8gygANw0h40TU7Vzqf/CFmZ6Iu13Ps1QSc84UDLQkXYqCDdp7OlHuvq6n1+UseRvz47
 bNzTXJYjAa02pv2zYusbmZhtn38cRZl50+yPgMixY1/TIBUn42rw4RELGm+B3xhST+ug
 eC5w==
X-Gm-Message-State: AOAM533zsPOvUtr/rBUJW+VMNd9J7y7LuZ9o77Yryf9jhssi1ILESI8N
 xegY94l8GjV+1OtF9CYZLfIMUoFYKJ5g/97U8Ks=
X-Google-Smtp-Source: ABdhPJz8h5CbpNmNWFW+5CPs0D5Ot6TYcO6pJ5ZglZgFse6a4n332blIPY1hL7WS4TLDebN2ONgPU+pxu72DeVZttco=
X-Received: by 2002:a05:6808:f15:: with SMTP id
 m21mr254325oiw.123.1614288551794; 
 Thu, 25 Feb 2021 13:29:11 -0800 (PST)
MIME-Version: 1.0
References: <1614243728-52952-1-git-send-email-yang.lee@linux.alibaba.com>
In-Reply-To: <1614243728-52952-1-git-send-email-yang.lee@linux.alibaba.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Thu, 25 Feb 2021 16:29:00 -0500
Message-ID: <CADnq5_Net7GN_zaMJWeO_b-zXwOQMNNsx5YqvhR_UdWxP-rsYA@mail.gmail.com>
To: Yang Li <yang.lee@linux.alibaba.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Dave Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>, "Deucher,
 Alexander" <alexander.deucher@amd.com>,
 Christian Koenig <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH] drm/amdgpu: Replace
	DEFINE_SIMPLE_ATTRIBUTE with DEFINE_DEBUGFS_ATTRIBUTE
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

T24gVGh1LCBGZWIgMjUsIDIwMjEgYXQgNDowMiBBTSBZYW5nIExpIDx5YW5nLmxlZUBsaW51eC5h
bGliYWJhLmNvbT4gd3JvdGU6Cj4KPiBGaXggdGhlIGZvbGxvd2luZyBjb2NjaWNoZWNrIHdhcm5p
bmc6Cj4gLi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZGVidWdmcy5jOjE1ODk6
MC0yMzogV0FSTklORzoKPiBmb3BzX2liX3ByZWVtcHQgc2hvdWxkIGJlIGRlZmluZWQgd2l0aCBE
RUZJTkVfREVCVUdGU19BVFRSSUJVVEUKPiAuL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2Ft
ZGdwdV9kZWJ1Z2ZzLmM6MTU5MjowLTIzOiBXQVJOSU5HOgo+IGZvcHNfc2Nsa19zZXQgc2hvdWxk
IGJlIGRlZmluZWQgd2l0aCBERUZJTkVfREVCVUdGU19BVFRSSUJVVEUKPgo+IFJlcG9ydGVkLWJ5
OiBBYmFjaSBSb2JvdCA8YWJhY2lAbGludXguYWxpYmFiYS5jb20+Cj4gU2lnbmVkLW9mZi1ieTog
WWFuZyBMaSA8eWFuZy5sZWVAbGludXguYWxpYmFiYS5jb20+CgpBcHBsaWVkLiAgVGhhbmtzIQoK
QWxleAoKCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kZWJ1Z2Zz
LmMgfCA0ICsrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlv
bnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVf
ZGVidWdmcy5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RlYnVnZnMuYwo+
IGluZGV4IDBhMjVmZWMuLjUyZWY0ODggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2Ft
ZC9hbWRncHUvYW1kZ3B1X2RlYnVnZnMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L2FtZGdwdV9kZWJ1Z2ZzLmMKPiBAQCAtMTU4NiwxMCArMTU4NiwxMCBAQCBzdGF0aWMgaW50
IGFtZGdwdV9kZWJ1Z2ZzX3NjbGtfc2V0KHZvaWQgKmRhdGEsIHU2NCB2YWwpCj4gICAgICAgICBy
ZXR1cm4gMDsKPiAgfQo+Cj4gLURFRklORV9TSU1QTEVfQVRUUklCVVRFKGZvcHNfaWJfcHJlZW1w
dCwgTlVMTCwKPiArREVGSU5FX0RFQlVHRlNfQVRUUklCVVRFKGZvcHNfaWJfcHJlZW1wdCwgTlVM
TCwKPiAgICAgICAgICAgICAgICAgICAgICAgICBhbWRncHVfZGVidWdmc19pYl9wcmVlbXB0LCAi
JWxsdVxuIik7Cj4KPiAtREVGSU5FX1NJTVBMRV9BVFRSSUJVVEUoZm9wc19zY2xrX3NldCwgTlVM
TCwKPiArREVGSU5FX0RFQlVHRlNfQVRUUklCVVRFKGZvcHNfc2Nsa19zZXQsIE5VTEwsCj4gICAg
ICAgICAgICAgICAgICAgICAgICAgYW1kZ3B1X2RlYnVnZnNfc2Nsa19zZXQsICIlbGx1XG4iKTsK
Pgo+ICBpbnQgYW1kZ3B1X2RlYnVnZnNfaW5pdChzdHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldikK
PiAtLQo+IDEuOC4zLjEKPgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4gZHJpLWRldmVsIG1haWxpbmcgbGlzdAo+IGRyaS1kZXZlbEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2RyaS1kZXZlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFy
by5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1t
LXNpZwo=
