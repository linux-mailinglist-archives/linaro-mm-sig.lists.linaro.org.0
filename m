Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA9215B1EA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 12 Feb 2020 21:33:47 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BD8B56183B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 12 Feb 2020 20:33:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id B2DA761890; Wed, 12 Feb 2020 20:33:46 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A369E618EF;
	Wed, 12 Feb 2020 20:33:22 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 8CB856183B
 for <linaro-mm-sig@lists.linaro.org>; Wed, 12 Feb 2020 20:33:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 79FA2618EF; Wed, 12 Feb 2020 20:33:20 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by lists.linaro.org (Postfix) with ESMTPS id ADFC96183B
 for <linaro-mm-sig@lists.linaro.org>; Wed, 12 Feb 2020 20:33:19 +0000 (UTC)
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com
 [209.85.219.51])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C3C6B24649
 for <linaro-mm-sig@lists.linaro.org>; Wed, 12 Feb 2020 20:33:18 +0000 (UTC)
Received: by mail-qv1-f51.google.com with SMTP id u10so1575511qvi.2
 for <linaro-mm-sig@lists.linaro.org>; Wed, 12 Feb 2020 12:33:18 -0800 (PST)
X-Gm-Message-State: APjAAAULj5fHslcuLtzwDxsrlpG1xcadnE55EWQhAsL1Wp+9ylU+pTNS
 /MyrG8BIWm7e9KwQzFHQoK20v0wmNCf78HeWng==
X-Google-Smtp-Source: APXvYqzre1CEhmCZxdnqAWYpg8FbsvimAbvrSYpW/TM7sS3n6YPLS4HOei7P5FSDxFM49Mt4fmLX+ckAuwTDSPKYjl4=
X-Received: by 2002:a0c:f6cd:: with SMTP id d13mr20705135qvo.20.1581539597924; 
 Wed, 12 Feb 2020 12:33:17 -0800 (PST)
MIME-Version: 1.0
References: <20200203152724.42611-1-yuehaibing@huawei.com>
In-Reply-To: <20200203152724.42611-1-yuehaibing@huawei.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 12 Feb 2020 14:33:07 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+BFrJ-bdDuKxCJ0OX=rLGsoHVf6u55irCA7duCJBB7sA@mail.gmail.com>
Message-ID: <CAL_Jsq+BFrJ-bdDuKxCJ0OX=rLGsoHVf6u55irCA7duCJBB7sA@mail.gmail.com>
To: YueHaibing <yuehaibing@huawei.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Tomeu Vizoso <tomeu.vizoso@collabora.com>, David Airlie <airlied@linux.ie>,
 kernel-janitors@vger.kernel.org, dri-devel <dri-devel@lists.freedesktop.org>,
 linaro-mm-sig@lists.linaro.org, Hulk Robot <hulkci@huawei.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH -next] drm/panfrost: Remove set but not
	used variable 'bo'
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

T24gTW9uLCBGZWIgMywgMjAyMCBhdCA5OjMzIEFNIFl1ZUhhaWJpbmcgPHl1ZWhhaWJpbmdAaHVh
d2VpLmNvbT4gd3JvdGU6Cj4KPiBGaXhlcyBnY2MgJy1XdW51c2VkLWJ1dC1zZXQtdmFyaWFibGUn
IHdhcm5pbmc6Cj4KPiBkcml2ZXJzL2dwdS9kcm0vcGFuZnJvc3QvcGFuZnJvc3Rfam9iLmM6IElu
IGZ1bmN0aW9uICdwYW5mcm9zdF9qb2JfY2xlYW51cCc6Cj4gZHJpdmVycy9ncHUvZHJtL3BhbmZy
b3N0L3BhbmZyb3N0X2pvYi5jOjI3ODozMTogd2FybmluZzoKPiAgdmFyaWFibGUgJ2JvJyBzZXQg
YnV0IG5vdCB1c2VkIFstV3VudXNlZC1idXQtc2V0LXZhcmlhYmxlXQo+Cj4gY29tbWl0IGJkZWZj
YTJkOGRjMCAoImRybS9wYW5mcm9zdDogQWRkIHRoZSBwYW5mcm9zdF9nZW1fbWFwcGluZyBjb25j
ZXB0IikKPiBpbnZvbHZlZCB0aGlzIHVudXNlZCB2YXJpYWJsZS4KPgo+IFJlcG9ydGVkLWJ5OiBI
dWxrIFJvYm90IDxodWxrY2lAaHVhd2VpLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBZdWVIYWliaW5n
IDx5dWVoYWliaW5nQGh1YXdlaS5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9wYW5mcm9z
dC9wYW5mcm9zdF9qb2IuYyB8IDYgKy0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKSwgNSBkZWxldGlvbnMoLSkKCkFwcGxpZWQgdG8gZHJtLW1pc2MtZml4ZXMuCgpSb2IKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNp
ZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlz
dHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
