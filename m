Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D613221AE
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 Feb 2021 22:42:52 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BD442667D2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 22 Feb 2021 21:42:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id AC6F6667D7; Mon, 22 Feb 2021 21:42:51 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 41AC0667D3;
	Mon, 22 Feb 2021 21:42:28 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 701CB667CF
 for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Feb 2021 21:42:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 531D2667D3; Mon, 22 Feb 2021 21:42:25 +0000 (UTC)
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com
 [209.85.167.176])
 by lists.linaro.org (Postfix) with ESMTPS id 3C5CA667CF
 for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Feb 2021 21:42:24 +0000 (UTC)
Received: by mail-oi1-f176.google.com with SMTP id w69so5851693oif.1
 for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Feb 2021 13:42:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dhUE+BTyH6wr+/ARgGP1BN/9HRGnBQw8k+/gXIcdf18=;
 b=pjcVsG5mPAMDm26Mrfa2l2YUAwl7xL5Oxcng1sGFjP+qq5rABCENYF9USDTgNy7BaR
 6nHj/iFZRiPHKzAr/TnsM9fsd+jwRAFzIhGEhzNDS/DSzMDOdWuEmxA3yPlLB4aCg0NP
 xuwoxOsZqY2HBowVaCp5pKY3uNy9FpCJTqfIWZvUUJx3peKndkEFuwKcd+Ow8o8iUg8B
 EKkC4sQ6rqj8cd1f6r+TZc0ZOJ3IpWxoh3Asg1FgVW62Ph17KUla62vpkWO6NAViVhgH
 sJxv3wL1oyZLQQK6rNQLbehASpAkg7CFIdbjXMVqoEVWt/8n52sVj0pCl46mo1snAH7R
 NLLw==
X-Gm-Message-State: AOAM5304y2m8l3/4+Cc8sJZ6tKXPYjtHOUkXdA1Tsg30ViZkIi4wB2md
 PnilfQw1AAgQP2tB2H2kCgkg5Ml50Asj5+OiuUI=
X-Google-Smtp-Source: ABdhPJzfn71SCwifR8WX+lGVU6vR4TxYHBxjwhj+i0lE4Rz9jlSnoSrSHzTX8keOZeXzlF+kiI3NxJkcunNeDOVGPzE=
X-Received: by 2002:aca:f485:: with SMTP id s127mr4991211oih.120.1614030143812; 
 Mon, 22 Feb 2021 13:42:23 -0800 (PST)
MIME-Version: 1.0
References: <1613810110-106402-1-git-send-email-jiapeng.chong@linux.alibaba.com>
In-Reply-To: <1613810110-106402-1-git-send-email-jiapeng.chong@linux.alibaba.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Mon, 22 Feb 2021 16:42:12 -0500
Message-ID: <CADnq5_OS3KNQU1QWP=0Y8U0hDSf6uL087wj=prLQQrOf6DZYeQ@mail.gmail.com>
To: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Dave Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>, "Deucher,
 Alexander" <alexander.deucher@amd.com>,
 Christian Koenig <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH] drm/amdgpu/sdma5.2: Remove unnecessary
	conversion to bool
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

QXBwbGllZC4gIFRoYW5rcyEKCkFsZXgKCk9uIFNhdCwgRmViIDIwLCAyMDIxIGF0IDM6MzUgQU0g
SmlhcGVuZyBDaG9uZwo8amlhcGVuZy5jaG9uZ0BsaW51eC5hbGliYWJhLmNvbT4gd3JvdGU6Cj4K
PiBGaXggdGhlIGZvbGxvd2luZyBjb2NjaWNoZWNrIHdhcm5pbmdzOgo+Cj4gLi9kcml2ZXJzL2dw
dS9kcm0vYW1kL2FtZGdwdS9zZG1hX3Y1XzIuYzoxNjIxOjQwLTQ1OiBXQVJOSU5HOiBjb252ZXJz
aW9uCj4gdG8gYm9vbCBub3QgbmVlZGVkIGhlcmUuCj4KPiAuL2RyaXZlcnMvZ3B1L2RybS9hbWQv
YW1kZ3B1L3NkbWFfdjVfMi5jOjE2MTk6NDAtNDU6IFdBUk5JTkc6IGNvbnZlcnNpb24KPiB0byBi
b29sIG5vdCBuZWVkZWQgaGVyZS4KPgo+IFJlcG9ydGVkLWJ5OiBBYmFjaSBSb2JvdCA8YWJhY2lA
bGludXguYWxpYmFiYS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogSmlhcGVuZyBDaG9uZyA8amlhcGVu
Zy5jaG9uZ0BsaW51eC5hbGliYWJhLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRncHUvc2RtYV92NV8yLmMgfCA0ICsrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9u
cygrKSwgMiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1k
L2FtZGdwdS9zZG1hX3Y1XzIuYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L3NkbWFfdjVf
Mi5jCj4gaW5kZXggZjFiYTM2YS4uOWVkNzlhOSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS9zZG1hX3Y1XzIuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L3NkbWFfdjVfMi5jCj4gQEAgLTE2MTYsOSArMTYxNiw5IEBAIHN0YXRpYyBpbnQgc2RtYV92
NV8yX3NldF9jbG9ja2dhdGluZ19zdGF0ZSh2b2lkICpoYW5kbGUsCj4gICAgICAgICBjYXNlIENI
SVBfVkFOR09HSDoKPiAgICAgICAgIGNhc2UgQ0hJUF9ESU1HUkVZX0NBVkVGSVNIOgo+ICAgICAg
ICAgICAgICAgICBzZG1hX3Y1XzJfdXBkYXRlX21lZGl1bV9ncmFpbl9jbG9ja19nYXRpbmcoYWRl
diwKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0YXRlID09IEFNRF9DR19TVEFU
RV9HQVRFID8gdHJ1ZSA6IGZhbHNlKTsKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHN0YXRlID09IEFNRF9DR19TVEFURV9HQVRFKTsKPiAgICAgICAgICAgICAgICAgc2RtYV92NV8y
X3VwZGF0ZV9tZWRpdW1fZ3JhaW5fbGlnaHRfc2xlZXAoYWRldiwKPiAtICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHN0YXRlID09IEFNRF9DR19TVEFURV9HQVRFID8gdHJ1ZSA6IGZhbHNl
KTsKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0YXRlID09IEFNRF9DR19TVEFU
RV9HQVRFKTsKPiAgICAgICAgICAgICAgICAgYnJlYWs7Cj4gICAgICAgICBkZWZhdWx0Ogo+ICAg
ICAgICAgICAgICAgICBicmVhazsKPiAtLQo+IDEuOC4zLjEKPgo+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gZHJpLWRldmVsIG1haWxpbmcgbGlzdAo+
IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2RyaS1kZXZlbApfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxt
YW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
