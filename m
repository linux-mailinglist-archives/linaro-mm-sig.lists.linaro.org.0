Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E9CA3E5517
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Aug 2021 10:26:38 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A8D0D61456
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 10 Aug 2021 08:26:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 93741619D7; Tue, 10 Aug 2021 08:26:37 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A9FDA612E7;
	Tue, 10 Aug 2021 08:26:34 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 7D59E609A7
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Aug 2021 08:26:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7AC59612E7; Tue, 10 Aug 2021 08:26:33 +0000 (UTC)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com
 [209.85.167.41])
 by lists.linaro.org (Postfix) with ESMTPS id 70C1F609A7
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Aug 2021 08:26:31 +0000 (UTC)
Received: by mail-lf1-f41.google.com with SMTP id x27so17169857lfu.5
 for <linaro-mm-sig@lists.linaro.org>; Tue, 10 Aug 2021 01:26:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=djm4DWbOF22GhsSvHwwgQ4MO8NZc/LJRB+Vb97tWuW0=;
 b=QtQSkDYS9w7avyA8UUAyR1p5yorxliXuFlS5AocLoZh8RLzymJJOhaznYtkRR1WTD5
 j0niLWf+G96pJbeqX2YyGUDJYSG2qwUgtzbhNIku7WnBVHtO0tXJcICn4+zeXuIcaVXD
 bENk6TgC1mpKQN/tMKlIEtmY6eWttigESp5KeiPIq2Fu6hrtyzz6vap2z7gtt3Nxzz7R
 bMlE5Kz4+ywpLvucwqdHorJd2b0uV/PvoQLrI5gSxvGXK1+yiGLSfLDqCpBDEqPSRzWP
 LtVW+VrAP/RKPjh+yxi0J30EbAP0w113KgYXaAjfM7j5dEo7FS/4XSaamI+59oW6Yc08
 Expw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=djm4DWbOF22GhsSvHwwgQ4MO8NZc/LJRB+Vb97tWuW0=;
 b=tYHvIf9ulBGbm9DOidKVLpIid0wsLSb+3N1rZ7PQmiLplIxw0kt7RutVTX6OcH1UO/
 nEbF3Gkk1W82EKHkJabGRvZiBXk7Q74fnL3SCD0W0eIO+6nNhrqfSOnSwhq+3ET1JiSt
 nR1Fs7xLSqzG6JRDFfudi0gmnnuYH5mY878cfieTzhTKj088T5Both5ANE0Y/8n/0FHR
 ZPk1X9CkdskFig6/KD+SGnHdw4OLPeHzmwS/WgAKaTIVvBlunWQWjiXnLvIWX2xgJnb+
 HHSQep89O3TjqB00J7h9HfmxJBtBDr9ufN7IF5QN+wxiToyHjLUIrBasoVSeXSf6JSOp
 8EsQ==
X-Gm-Message-State: AOAM531bkxlwx98TIOTWmvBmeZKshW+ZFkqGRSubPItkXOxvtfb2tH4/
 1IBzM5bHqUvQGMdBj5N2Ywfspu6Vof5n15fOqmyxsHRF
X-Google-Smtp-Source: ABdhPJy+8bv0DEw5D+Cldh+36uB+ypSXDqcR8YNnjehpz758RYuy1Hyme5gswVLwUSfvXz0sBmBXuqjPuDWoFcXT1Lo=
X-Received: by 2002:a05:6512:1141:: with SMTP id
 m1mr20542919lfg.492.1628583990192; 
 Tue, 10 Aug 2021 01:26:30 -0700 (PDT)
MIME-Version: 1.0
References: <20210722190747.1986614-1-hridya@google.com>
 <CALAqxLVLMt7rbJBQtFBw-ikBAjKrVgfS8=Nu6NFQbp_gq1m22Q@mail.gmail.com>
 <CA+wgaPOQmY4H9n302YspKuLk9iq9vBzdWBTu19EUUsiQYTUOzQ@mail.gmail.com>
In-Reply-To: <CA+wgaPOQmY4H9n302YspKuLk9iq9vBzdWBTu19EUUsiQYTUOzQ@mail.gmail.com>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Tue, 10 Aug 2021 13:56:19 +0530
Message-ID: <CAO_48GG_=zA39iUzzHD-2b1ktqrTCZ3k8z8V12x48u4SS30_TQ@mail.gmail.com>
To: Hridya Valsaraju <hridya@google.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: [Linaro-mm-sig] [PATCH] dma-buf: heaps: Set allocation limit
 for system heap
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 lkml <linux-kernel@vger.kernel.org>, Liam Mark <lmark@codeaurora.org>,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 John Stultz <john.stultz@linaro.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Laura Abbott <labbott@redhat.com>,
 Android Kernel Team <kernel-team@android.com>,
 Brian Starkey <Brian.Starkey@arm.com>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

SGkgSHJpZHlhLAoKQXBvbG9naWVzIGZvciB0aGUgZGVsYXkgaW4gcmVzcG9uZGluZzsKCgpPbiBX
ZWQsIDQgQXVnIDIwMjEgYXQgMDM6MDksIEhyaWR5YSBWYWxzYXJhanUgPGhyaWR5YUBnb29nbGUu
Y29tPiB3cm90ZToKPgo+IE9uIE1vbiwgQXVnIDIsIDIwMjEgYXQgNzoxOCBQTSBKb2huIFN0dWx0
eiA8am9obi5zdHVsdHpAbGluYXJvLm9yZz4gd3JvdGU6Cj4gPgo+ID4gT24gVGh1LCBKdWwgMjIs
IDIwMjEgYXQgMTI6MDcgUE0gSHJpZHlhIFZhbHNhcmFqdSA8aHJpZHlhQGdvb2dsZS5jb20+IHdy
b3RlOgo+ID4gPiBUaGlzIHBhdGNoIGxpbWl0cyB0aGUgc2l6ZSBvZiB0b3RhbCBtZW1vcnkgdGhh
dCBjYW4gYmUgcmVxdWVzdGVkIGluIGEKPiA+ID4gc2luZ2xlIGFsbG9jYXRpb24gZnJvbSB0aGUg
c3lzdGVtIGhlYXAuIFRoaXMgd291bGQgcHJldmVudCBhCj4gPiA+IGJ1Z2d5L21hbGljaW91cyBj
bGllbnQgZnJvbSBkZXBsZXRpbmcgc3lzdGVtIG1lbW9yeSBieSByZXF1ZXN0aW5nIGZvciBhbgo+
ID4gPiBleHRyZW1lbHkgbGFyZ2UgYWxsb2NhdGlvbiB3aGljaCBtaWdodCBkZXN0YWJpbGl6ZSB0
aGUgc3lzdGVtLgo+ID4gPgo+ID4gPiBUaGUgbGltaXQgaXMgc2V0IHRvIGhhbGYgdGhlIHNpemUg
b2YgdGhlIGRldmljZSdzIHRvdGFsIFJBTSB3aGljaCBpcyB0aGUKPiA+ID4gc2FtZSBhcyB3aGF0
IHdhcyBzZXQgYnkgdGhlIGRlcHJlY2F0ZWQgSU9OIHN5c3RlbSBoZWFwLgo+ID4gPgo+ID4gPiBT
aWduZWQtb2ZmLWJ5OiBIcmlkeWEgVmFsc2FyYWp1IDxocmlkeWFAZ29vZ2xlLmNvbT4KPiA+Cj4g
PiBTZWVtcyBzYW5lIHRvIG1lLCB1bmxlc3MgZm9sa3MgaGF2ZSBiZXR0ZXIgc3VnZ2VzdGlvbnMg
Zm9yIGFsbG9jYXRpb24gbGltaXRzLgo+ID4KPiA+IFJldmlld2VkLWJ5OiBKb2huIFN0dWx0eiA8
am9obi5zdHVsdHpAbGluYXJvLm9yZz4KPgo+IFRoYW5rIHlvdSBmb3IgdGFraW5nIGEgbG9vayBK
b2huIQpMb29rcyBnb29kIHRvIG1lOyBJIHdpbGwgYXBwbHkgaXQgdG8gZHJtLW1pc2MgdG9kYXku
Cj4KPiBSZWdhcmRzLAo+IEhyaWR5YQo+Cj4gPgo+ID4gdGhhbmtzCj4gPiAtam9obgpCZXN0LApT
dW1pdC4KCgotLSAKVGhhbmtzIGFuZCByZWdhcmRzLAoKU3VtaXQgU2Vtd2FsIChoZSAvIGhpbSkK
VGVjaCBMZWFkIC0gTENHLCBWZXJ0aWNhbCBUZWNobm9sb2dpZXMKTGluYXJvLm9yZyDilIIgT3Bl
biBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1t
bS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW5hcm8tbW0tc2lnCg==
