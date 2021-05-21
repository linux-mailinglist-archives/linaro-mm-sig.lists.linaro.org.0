Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3410838C72D
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 May 2021 14:54:24 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9EE3F61877
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 21 May 2021 12:54:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 1A28161A2A; Fri, 21 May 2021 12:54:21 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5AD3661438;
	Fri, 21 May 2021 12:54:18 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id AE51261160
 for <linaro-mm-sig@lists.linaro.org>; Fri, 21 May 2021 12:54:17 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A3D0361438; Fri, 21 May 2021 12:54:17 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
 [209.85.221.45])
 by lists.linaro.org (Postfix) with ESMTPS id 9683F61160
 for <linaro-mm-sig@lists.linaro.org>; Fri, 21 May 2021 12:54:15 +0000 (UTC)
Received: by mail-wr1-f45.google.com with SMTP id z17so20960259wrq.7
 for <linaro-mm-sig@lists.linaro.org>; Fri, 21 May 2021 05:54:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=FJZtfLgsMzPpeEGC1nWMm7W+KSm1MH2DLYlMQ7WHt1A=;
 b=sFGpdh1dbpP8JSKR1U5AOEieSm0E4tGRK55RIlKzhpUYYD3nZXIvDR2brLKqPzRu0u
 zIyVfraBuh1c5fIsX1HMBxFUVwKD2R3qnFutX1JtHyW0NlRGTH0uvf832I4g8nhP0T/a
 mwwiDfknsZS7vuFFEi2KwIiHPPS1XkXKy3DnGSkiBlVJybTzdOZFR5fgrpIqzn5vP+UJ
 /kAfrcH2cZLJ8QhLo3Wg5w2a8TqB6b28BhglC7vyL8r099YlZraIJYospyDMT/v3U0MH
 u/USku+abTJL2De2pHeCfruVuOdK4CBydA07Cv6yLoBnuDbtwx0km2WGWDWNiPW8kci0
 fl9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=FJZtfLgsMzPpeEGC1nWMm7W+KSm1MH2DLYlMQ7WHt1A=;
 b=dHSE38/hod8/YKOa/t6qFmJP8Sp1On7yYKVus4F++LJiEzFiO6AVNdfu9b6LTdAt3O
 u0630MuuFsKD168r31SNt/kdZOjj2hbi6gxd4ZEKZsM+vIy6cUTay6LKZf/ECCKKD/dk
 0WJraW15tE2DFYsZTgYW5Uaa3yKd6NYqKRxSIMXa+hcHtK8NWO8gWpy/KDqiaPysz+9b
 qYSfiOxz0lkoNAKVFuxXdikmpoMXzgwD/znV3p6Zq884MQoEwhgA2gUbyBd4xW1kppHm
 tEUj5uOjBVKIoBIFcEWQpekBZIyVdVylVFc2FemxuEVBSnbKd1n81JGhqMkqH6cymZDU
 a3sQ==
X-Gm-Message-State: AOAM533TWegsM9JxR7nLmEKEM36OrkH29IfqQ27k+z3ValzL7FtEcfdb
 ShOcdb0PrX43Rlg7FYdLXRgh+DpJOLp0RuAcqlWR3w==
X-Google-Smtp-Source: ABdhPJwl27bN4Oz12Tnt6vIx/LxywSl8190UB/7R09nMwblbNvh85dxGlpNGkieI1QeXVqDFLBux5vHjGvOpKZOK43M=
X-Received: by 2002:a5d:570c:: with SMTP id a12mr9289625wrv.354.1621601654629; 
 Fri, 21 May 2021 05:54:14 -0700 (PDT)
MIME-Version: 1.0
References: <20210521090959.1663703-1-daniel.vetter@ffwll.ch>
 <20210521090959.1663703-4-daniel.vetter@ffwll.ch>
 <CAPj87rMBVRamT+VAVUaUnq3C1KFVqzABi99RKs=1_vyb4YWDnQ@mail.gmail.com>
 <d1ef10e8-b774-06e5-92ab-047c58e1ea41@amd.com>
In-Reply-To: <d1ef10e8-b774-06e5-92ab-047c58e1ea41@amd.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Fri, 21 May 2021 13:54:03 +0100
Message-ID: <CAPj87rOzV1mC=Nv2zfsYXrD4ARV7cmmJmkUCSwRSw1Ksy0k-aA@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH 04/11] drm/panfrost: Fix implicit sync
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
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
Cc: Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

T24gRnJpLCAyMSBNYXkgMjAyMSBhdCAxMzoyOCwgQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFu
LmtvZW5pZ0BhbWQuY29tPiB3cm90ZToKPiBBbSAyMS4wNS4yMSB1bSAxNDoyMiBzY2hyaWViIERh
bmllbCBTdG9uZToKPiA+IFllYWgsIHRoZSAnc2Vjb25kLWdlbmVyYXRpb24gVmFsaGFsbCcgR1BV
cyBjb21pbmcgbGF0ZXIgdGhpcyB5ZWFyIC8KPiA+IGVhcmx5IG5leHQgeWVhciBhcmUgc3RhcnRp
bmcgdG8gZ2V0IHByZXR0eSB3ZWlyZC4gRmlybXdhcmUtbWVkaWF0ZWQKPiA+IGpvYiBzY2hlZHVs
aW5nIG91dCBvZiBtdWx0aXBsZSBxdWV1ZXMsIHVzZXJzcGFjZSBoYXZpbmcgZGlyZWN0IGFjY2Vz
cwo+ID4gdG8gdGhlIHF1ZXVlcyBhbmQgY2FuIGRvIGludGVyLXF1ZXVlIHN5bmNocm9uaXNhdGlv
biAoYXQgbGVhc3QgSSB0aGluawo+ID4gc28pLCBldGMuIEZvciBib251cyBwb2ludHMsIHN5bmNo
cm9uaXNhdGlvbiBpcyBiYXNlZCBvbiAkYWRkciA9ICR2YWwKPiA+IHRvIHNpZ25hbCBhbmQgJGFk
ZHIgPT0gJHZhbCB0byB3YWl0LCB3aXRoIGEgc2VwYXJhdGUgZmVuY2UgcHJpbWl0aXZlCj4gPiBh
cyB3ZWxsLgo+Cj4gV2VsbCB0aGF0IHNvdW5kcyBmYW1pbGlhciA6KQoKSSBsYXVnaGVkIHdoZW4g
SSBmaXJzdCBzYXcgaXQsIGJlY2F1c2UgaXQgd2FzIGJldHRlciB0aGFuIGNyeWluZyBJIGd1ZXNz
LgoKSWYgeW91J3JlIGN1cmlvdXMsIHRoZSBpbnRlcmZhY2UgZGVmaW5pdGlvbnMgYXJlIGluIHRo
ZSBjc2YvIGRpcmVjdG9yeQppbiB0aGUgJ0JpZnJvc3Qga2VybmVsIGRyaXZlcicgcjMwcDAgZG93
bmxvYWQgeW91IGNhbiBnZXQgZnJvbSB0aGUgQXJtCmRldmVsb3BlciBzaXRlLiBVbmZvcnR1bmF0
ZWx5IHRoZSBleGFjdCBzZW1hbnRpY3MgYXJlbid0IGNvbXBsZXRlbHkKY2xlYXIuCgo+ID4gT2J2
aW91c2x5IEFybSBzaG91bGQgYmUgcGFydCBvZiB0aGlzIGNvbnZlcnNhdGlvbiBoZXJlLCBidXQg
SSBndWVzcwo+ID4gd2UnbGwgaGF2ZSB0byB3YWl0IGZvciBhIHdoaWxlIHlldCB0byBzZWUgaG93
IGV2ZXJ5dGhpbmcncyBzaGFrZW4gb3V0Cj4gPiB3aXRoIHRoaXMgbmV3IGdlbiwgYW5kIGhvcGUg
dGhhdCB3aGF0ZXZlcidzIGJlZW4gZGVzaWduZWQgdXBzdHJlYW0gaW4KPiA+IHRoZSBtZWFudGlt
ZSBpcyBhY3R1YWxseSB2YWd1ZWx5IGNvbXBhdGlibGUgLi4uCj4KPiBZZWFoLCBnb2luZyB0byBr
ZWVwIHlvdSBpbiBDQyB3aGVuIHdlIHN0YXJ0IHRvIGNvZGUgYW5kIHJldmlldyB1c2VyIGZlbmNl
cy4KCkF3ZXNvbWUsIHRoYW5rcyBDaHJpc3RpYW4uIEFwcHJlY2lhdGUgaXQuIDopCgpDaGVlcnMs
CkRhbmllbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
aHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
