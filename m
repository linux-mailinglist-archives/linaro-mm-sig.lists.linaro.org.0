Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5A71D217D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 23:51:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D314765F8A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 13 May 2020 21:51:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C5F8D65F8F; Wed, 13 May 2020 21:51:48 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0AF2965F8B;
	Wed, 13 May 2020 21:51:17 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A7C1060E68
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 21:51:14 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 8D68865F8B; Wed, 13 May 2020 21:51:14 +0000 (UTC)
Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com
 [209.85.208.194])
 by lists.linaro.org (Postfix) with ESMTPS id 2C28C60E68
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 21:51:13 +0000 (UTC)
Received: by mail-lj1-f194.google.com with SMTP id d21so1238459ljg.9
 for <linaro-mm-sig@lists.linaro.org>; Wed, 13 May 2020 14:51:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=c4GzEKN4UHscMkRfgK/KmlmDtv9fIM50sPFyVikryKQ=;
 b=OD66uTRvqOuj19imh6CLoMHxv+p7YX73Mmi51dtxxm5JRn9Fx/CI9TChelU5NGmuJY
 z+P4dqJO5zK4CKJpT2QheE8znN6wcqkNizCFJNYluq05uh5qGQTzinSikrG8pIVHLi8/
 Dty/8OJfHDgrT0P8TpjUCp3vFQ4FvcJ/ArG5U1KcIHRIz6rV7XGy5C3jEuT0sA4Wl0sz
 Gm3fF6LPxId/LNsbVX4Ord682IeTfHx3+4upjC0oSoiI/kq5Z4Tj7SpqQnkgaSAOlOtD
 yBYO4XDK+OkQBhLnrmXVX4Fq1DdPuuJdhJC3a1oxSxeQj7/2c+4zZAKQHE0os57wB6pX
 v7Lg==
X-Gm-Message-State: AOAM530QZcPEZd52KcwFmgOpnUFz5cBmzR4k0eGHCWxC9bLnsLoiAu6y
 hDEf0RdU6AoX6wEpg5KiWa3JG0qCyqvcYXyImZTq3A==
X-Google-Smtp-Source: ABdhPJxvVYUU3pLt0Fm0zZnTD0agcvWiYXLQjHfcp4jZKWPnJaLBh2OjEP0dKl4uakuItjfjxNR6jFpY0iO1wNvpqZc=
X-Received: by 2002:a2e:8047:: with SMTP id p7mr641481ljg.206.1589406671985;
 Wed, 13 May 2020 14:51:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200513132114.6046-1-m.szyprowski@samsung.com>
 <CGME20200513133314eucas1p1a607b556e32887e7f5ca60eb09a476c6@eucas1p1.samsung.com>
 <20200513133245.6408-1-m.szyprowski@samsung.com>
 <20200513133245.6408-24-m.szyprowski@samsung.com>
In-Reply-To: <20200513133245.6408-24-m.szyprowski@samsung.com>
From: Eric Anholt <eric@anholt.net>
Date: Wed, 13 May 2020 14:51:00 -0700
Message-ID: <CADaigPV7sO1pKrspDya+3OLeX0b0mzkZdjb4ox+gQddsmfw0-w@mail.gmail.com>
To: Marek Szyprowski <m.szyprowski@samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 DRI Development <dri-devel@lists.freedesktop.org>,
 linaro-mm-sig@lists.linaro.org, iommu@lists.linux-foundation.org,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Subject: Re: [Linaro-mm-sig] [PATCH v5 24/38] drm: v3d: fix common struct
	sg_table related issues
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

T24gV2VkLCBNYXkgMTMsIDIwMjAgYXQgNjozMyBBTSBNYXJlayBTenlwcm93c2tpCjxtLnN6eXBy
b3dza2lAc2Ftc3VuZy5jb20+IHdyb3RlOgo+Cj4gVGhlIERvY3VtZW50YXRpb24vRE1BLUFQSS1I
T1dUTy50eHQgc3RhdGVzIHRoYXQgdGhlIGRtYV9tYXBfc2coKSBmdW5jdGlvbgo+IHJldHVybnMg
dGhlIG51bWJlciBvZiB0aGUgY3JlYXRlZCBlbnRyaWVzIGluIHRoZSBETUEgYWRkcmVzcyBzcGFj
ZS4KPiBIb3dldmVyIHRoZSBzdWJzZXF1ZW50IGNhbGxzIHRvIHRoZSBkbWFfc3luY19zZ19mb3Jf
e2RldmljZSxjcHV9KCkgYW5kCj4gZG1hX3VubWFwX3NnIG11c3QgYmUgY2FsbGVkIHdpdGggdGhl
IG9yaWdpbmFsIG51bWJlciBvZiB0aGUgZW50cmllcwo+IHBhc3NlZCB0byB0aGUgZG1hX21hcF9z
ZygpLgo+Cj4gc3RydWN0IHNnX3RhYmxlIGlzIGEgY29tbW9uIHN0cnVjdHVyZSB1c2VkIGZvciBk
ZXNjcmliaW5nIGEgbm9uLWNvbnRpZ3VvdXMKPiBtZW1vcnkgYnVmZmVyLCB1c2VkIGNvbW1vbmx5
IGluIHRoZSBEUk0gYW5kIGdyYXBoaWNzIHN1YnN5c3RlbXMuIEl0Cj4gY29uc2lzdHMgb2YgYSBz
Y2F0dGVybGlzdCB3aXRoIG1lbW9yeSBwYWdlcyBhbmQgRE1BIGFkZHJlc3NlcyAoc2dsIGVudHJ5
KSwKPiBhcyB3ZWxsIGFzIHRoZSBudW1iZXIgb2Ygc2NhdHRlcmxpc3QgZW50cmllczogQ1BVIHBh
Z2VzIChvcmlnX25lbnRzIGVudHJ5KQo+IGFuZCBETUEgbWFwcGVkIHBhZ2VzIChuZW50cyBlbnRy
eSkuCj4KPiBJdCB0dXJuZWQgb3V0IHRoYXQgaXQgd2FzIGEgY29tbW9uIG1pc3Rha2UgdG8gbWlz
dXNlIG5lbnRzIGFuZCBvcmlnX25lbnRzCj4gZW50cmllcywgY2FsbGluZyBETUEtbWFwcGluZyBm
dW5jdGlvbnMgd2l0aCBhIHdyb25nIG51bWJlciBvZiBlbnRyaWVzIG9yCj4gaWdub3JpbmcgdGhl
IG51bWJlciBvZiBtYXBwZWQgZW50cmllcyByZXR1cm5lZCBieSB0aGUgZG1hX21hcF9zZygpCj4g
ZnVuY3Rpb24uCj4KPiBUbyBhdm9pZCBzdWNoIGlzc3VlcywgbGV0cyB1c2UgYSBjb21tb24gZG1h
LW1hcHBpbmcgd3JhcHBlcnMgb3BlcmF0aW5nCj4gZGlyZWN0bHkgb24gdGhlIHN0cnVjdCBzZ190
YWJsZSBvYmplY3RzIGFuZCB1c2Ugc2NhdHRlcmxpc3QgcGFnZQo+IGl0ZXJhdG9ycyB3aGVyZSBw
b3NzaWJsZS4gVGhpcywgYWxtb3N0IGFsd2F5cywgaGlkZXMgcmVmZXJlbmNlcyB0byB0aGUKPiBu
ZW50cyBhbmQgb3JpZ19uZW50cyBlbnRyaWVzLCBtYWtpbmcgdGhlIGNvZGUgcm9idXN0LCBlYXNp
ZXIgdG8gZm9sbG93Cj4gYW5kIGNvcHkvcGFzdGUgc2FmZS4KPgo+IFNpZ25lZC1vZmYtYnk6IE1h
cmVrIFN6eXByb3dza2kgPG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4KClJldmlld2VkLWJ5OiBF
cmljIEFuaG9sdCA8ZXJpY0BhbmhvbHQubmV0PgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlz
dGluZm8vbGluYXJvLW1tLXNpZwo=
