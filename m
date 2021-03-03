Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 0119832B8C7
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Mar 2021 15:57:57 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AE9C3666DD
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 Mar 2021 14:57:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A07D266718; Wed,  3 Mar 2021 14:57:55 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 67560666D5;
	Wed,  3 Mar 2021 14:57:30 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id D4BD666626
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Mar 2021 14:57:26 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id C609C666D5; Wed,  3 Mar 2021 14:57:26 +0000 (UTC)
Received: from mail-oo1-f52.google.com (mail-oo1-f52.google.com
 [209.85.161.52])
 by lists.linaro.org (Postfix) with ESMTPS id B005E66626
 for <linaro-mm-sig@lists.linaro.org>; Wed,  3 Mar 2021 14:57:25 +0000 (UTC)
Received: by mail-oo1-f52.google.com with SMTP id p6so5744724oot.2
 for <linaro-mm-sig@lists.linaro.org>; Wed, 03 Mar 2021 06:57:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qt5wXwklMsm6s5Zb+eD9YN9oX2rhIgEmQ1SsEPhvWyc=;
 b=HJBgJV22mvZEIO0TmdYGHU4w2w24j5owsijAyTHKyZa+N5F4zaCv+A/Y4sXPxrQwZ3
 HPsPhrQoGJTQwsi2Vdg8Ksy2YkoB7lcm7wFYsB4eA6Iw+CDnRxD/zZnaoHQWuGFFD5e9
 Mjh94WX1E0RKcRsy3hN8DoK1b1rURNdUWYcmBgAlCBOmOjQWucFuM2erf9DAvawLfr3X
 G7pvdRKijIqMZzsnz4++4APe3lizqG/c3hk5kqoYdbohdcPC/D8HWooCi9zScUtPctB8
 RlQYgAiqykLdAe7oJoSDYZROK2juVW6a9XDqdtHzOoRUmH+ExjQIPhHoFxEf1PVIqkqg
 3/LA==
X-Gm-Message-State: AOAM532zOIpEM3MFxjlZDr2J8H4dNR4c77uDKBpsj902tVjS0pkcB7gZ
 cPZk4/owdvf398LOo2o9+eAXGku99CkcEaN8XFM=
X-Google-Smtp-Source: ABdhPJxCv+I6j1jzZfjyYLdp+mYWLwPR3jdJK2Nb20n18ezv35ZR6OF8qMWWIVzO/17rhWFlEGpY/BRJoE8Bt7mhc8c=
X-Received: by 2002:a4a:88ee:: with SMTP id q43mr21478044ooh.61.1614783445212; 
 Wed, 03 Mar 2021 06:57:25 -0800 (PST)
MIME-Version: 1.0
References: <1614763065-114245-1-git-send-email-jiapeng.chong@linux.alibaba.com>
In-Reply-To: <1614763065-114245-1-git-send-email-jiapeng.chong@linux.alibaba.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Wed, 3 Mar 2021 09:57:13 -0500
Message-ID: <CADnq5_OXuJbZpaaW7m+skg9zgdS5Buwi6ANSttz41yjBP+HxLQ@mail.gmail.com>
To: Jiapeng Chong <jiapeng.chong@linux.alibaba.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Dave Airlie <airlied@linux.ie>, LKML <linux-kernel@vger.kernel.org>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>, "Deucher,
 Alexander" <alexander.deucher@amd.com>,
 Christian Koenig <christian.koenig@amd.com>,
 linux-media <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH] drm/amdgpu: Remove unnecessary
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

T24gV2VkLCBNYXIgMywgMjAyMSBhdCA0OjE4IEFNIEppYXBlbmcgQ2hvbmcKPGppYXBlbmcuY2hv
bmdAbGludXguYWxpYmFiYS5jb20+IHdyb3RlOgo+Cj4gRml4IHRoZSBmb2xsb3dpbmcgY29jY2lj
aGVjayB3YXJuaW5nczoKPgo+IC4vZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvc2RtYV92NF8w
LmM6MjI1Mjo0MC00NTogV0FSTklORzogY29udmVyc2lvbgo+IHRvIGJvb2wgbm90IG5lZWRlZCBo
ZXJlLgo+Cj4gUmVwb3J0ZWQtYnk6IEFiYWNpIFJvYm90IDxhYmFjaUBsaW51eC5hbGliYWJhLmNv
bT4KPiBTaWduZWQtb2ZmLWJ5OiBKaWFwZW5nIENob25nIDxqaWFwZW5nLmNob25nQGxpbnV4LmFs
aWJhYmEuY29tPgoKQXBwbGllZC4gIFRoYW5rcyEKCkFsZXgKCj4gLS0tCj4gIGRyaXZlcnMvZ3B1
L2RybS9hbWQvYW1kZ3B1L3NkbWFfdjRfMC5jIHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBp
bnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS9zZG1hX3Y0XzAuYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L3Nk
bWFfdjRfMC5jCj4gaW5kZXggYzhjMjJjMS4uMDBkMzc3MyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vYW1kL2FtZGdwdS9zZG1hX3Y0XzAuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9h
bWQvYW1kZ3B1L3NkbWFfdjRfMC5jCj4gQEAgLTIyNDksNyArMjI0OSw3IEBAIHN0YXRpYyBpbnQg
c2RtYV92NF8wX3NldF9wb3dlcmdhdGluZ19zdGF0ZSh2b2lkICpoYW5kbGUsCj4gICAgICAgICBj
YXNlIENISVBfUkFWRU46Cj4gICAgICAgICBjYXNlIENISVBfUkVOT0lSOgo+ICAgICAgICAgICAg
ICAgICBzZG1hX3Y0XzFfdXBkYXRlX3Bvd2VyX2dhdGluZyhhZGV2LAo+IC0gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgc3RhdGUgPT0gQU1EX1BHX1NUQVRFX0dBVEUgPyB0cnVlIDogZmFs
c2UpOwo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RhdGUgPT0gQU1EX1BHX1NU
QVRFX0dBVEUpOwo+ICAgICAgICAgICAgICAgICBicmVhazsKPiAgICAgICAgIGRlZmF1bHQ6Cj4g
ICAgICAgICAgICAgICAgIGJyZWFrOwo+IC0tCj4gMS44LjMuMQo+Cj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBkcmktZGV2ZWwgbWFpbGluZyBsaXN0
Cj4gZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0Ckxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
