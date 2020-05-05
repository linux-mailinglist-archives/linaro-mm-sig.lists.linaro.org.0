Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 12B8C1C51D9
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 11:25:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 438416085C
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  5 May 2020 09:25:24 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 3591061999; Tue,  5 May 2020 09:25:24 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 64CB66186E;
	Tue,  5 May 2020 09:24:52 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3BC2E6085C
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 09:24:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 1B39F6186E; Tue,  5 May 2020 09:24:50 +0000 (UTC)
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
 [209.85.167.194])
 by lists.linaro.org (Postfix) with ESMTPS id E0C216085C
 for <linaro-mm-sig@lists.linaro.org>; Tue,  5 May 2020 09:24:48 +0000 (UTC)
Received: by mail-oi1-f194.google.com with SMTP id k133so1214407oih.12
 for <linaro-mm-sig@lists.linaro.org>; Tue, 05 May 2020 02:24:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fA6tjdmApvG0BpsjkTdWv9/ZTQZ9vjPp82obp9l863E=;
 b=HDLny8XLcQtO5/7+y3LrpxARurZOvQEx47iHaOQ6SjmZ+UBmeud1Gf+hjLHcNwI1Ge
 f9ny1kcRQ8Ewf9PPajBKc4rBkw6aOUl2fv6qSnIySM9V2Vqnim7yBbLxiAsSx6Gj6G65
 LbE0SSk8sBuakKhLckYdpUkMq7CaIp0hZvCT73zscseAqhcdKJaV3syvHUqJN2D7iVc3
 y70XtZ3bGGmH5Is4v398IRlmP0LaCPvXLU2wAMkGkQhHk46ImHJZHxzxxQIazLlsTE55
 z57dJhkaTq0YePtbz8L3vVtFHfYseaO5dzVVsIllqtLqhHVSpxoBeAmziafgNWKkEIeX
 ad/Q==
X-Gm-Message-State: AGi0PubAd76H6N+usFFFd5Dc+Df+T/e6PBTgevzja/KdRX9biF2WIqRK
 hwWC3HuMnhW44y15AHvRXAFHVpUJGFuTYvd2wIs=
X-Google-Smtp-Source: APiQypKOjAo7caYTLLrvaP2LfYH11Xj01QYaa+uBtqm/9mZJ41Mdkz0F6pXJ47B38HgwsYDHPLvoSnLN/Mh8S4elUzU=
X-Received: by 2002:aca:f541:: with SMTP id t62mr1674694oih.148.1588670688206; 
 Tue, 05 May 2020 02:24:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200505083926.28503-1-m.szyprowski@samsung.com>
 <CGME20200505084634eucas1p1e0ea160dd77afbf6d2f7e6154ded40d0@eucas1p1.samsung.com>
 <20200505084614.30424-1-m.szyprowski@samsung.com>
 <20200505084614.30424-18-m.szyprowski@samsung.com>
In-Reply-To: <20200505084614.30424-18-m.szyprowski@samsung.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 5 May 2020 11:24:37 +0200
Message-ID: <CAMuHMdVisnijasoxazj+6kUFM3UrTYkVo6kC1dxZv5zK0yD7TQ@mail.gmail.com>
To: Marek Szyprowski <m.szyprowski@samsung.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 David Airlie <airlied@linux.ie>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 linaro-mm-sig@lists.linaro.org, Linux IOMMU <iommu@lists.linux-foundation.org>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH v3 18/25] drm: rcar-du: fix common
	struct sg_table related issues
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

SGkgTWFyZWssCgpPbiBUdWUsIE1heSA1LCAyMDIwIGF0IDEwOjQ4IEFNIE1hcmVrIFN6eXByb3dz
a2kKPG0uc3p5cHJvd3NraUBzYW1zdW5nLmNvbT4gd3JvdGU6Cj4gVGhlIERvY3VtZW50YXRpb24v
RE1BLUFQSS1IT1dUTy50eHQgc3RhdGVzIHRoYXQgZG1hX21hcF9zZyByZXR1cm5zIHRoZQo+IG51
bWVyIG9mIHRoZSBjcmVhdGVkIGVudHJpZXMgaW4gdGhlIERNQSBhZGRyZXNzIHNwYWNlLiBIb3dl
dmVyIHRoZQo+IHN1YnNlcXVlbnQgY2FsbHMgdG8gZG1hX3N5bmNfc2dfZm9yX3tkZXZpY2UsY3B1
fSBhbmQgZG1hX3VubWFwX3NnIG11c3QgYmUKPiBjYWxsZWQgd2l0aCB0aGUgb3JpZ2luYWwgbnVt
YmVyIG9mIHRoZSBlbnRyaWVzIHBhc3NlZCB0byBkbWFfbWFwX3NnLiBUaGUKPiBzZ190YWJsZS0+
bmVudHMgaW4gdHVybiBob2xkcyB0aGUgcmVzdWx0IG9mIHRoZSBkbWFfbWFwX3NnIGNhbGwgYXMg
c3RhdGVkCj4gaW4gaW5jbHVkZS9saW51eC9zY2F0dGVybGlzdC5oLiBBIGNvbW1vbiBtaXN0YWtl
IHdhcyB0byBpZ25vcmUgYSByZXN1bHQKPiBvZiB0aGUgZG1hX21hcF9zZyBmdW5jdGlvbiBhbmQg
ZG9uJ3QgdXNlIHRoZSBzZ190YWJsZS0+b3JpZ19uZW50cyBhdCBhbGwuCj4KPiBUbyBhdm9pZCBz
dWNoIGlzc3VlcywgbGV0cyB1c2UgY29tbW9uIGRtYS1tYXBwaW5nIHdyYXBwZXJzIG9wZXJhdGlu
Zwo+IGRpcmVjdGx5IG9uIHRoZSBzdHJ1Y3Qgc2dfdGFibGUgb2JqZWN0cyBhbmQgYWRqdXN0IHJl
ZmVyZW5jZXMgdG8gdGhlCj4gbmVudHMgYW5kIG9yaWdfbmVudHMgcmVzcGVjdGl2ZWx5Lgo+Cj4g
U2lnbmVkLW9mZi1ieTogTWFyZWsgU3p5cHJvd3NraSA8bS5zenlwcm93c2tpQHNhbXN1bmcuY29t
Pgo+IC0tLQo+IEZvciBtb3JlIGluZm9ybWF0aW9uLCBzZWUgJ1tQQVRDSCB2MyAwMC8yNV0gRFJN
OiBmaXggc3RydWN0IHNnX3RhYmxlIG5lbnRzCj4gdnMuIG9yaWdfbmVudHMgbWlzdXNlJyB0aHJl
YWQ6IGh0dHBzOi8vbGttbC5vcmcvbGttbC8yMDIwLzUvNS8xODcKCkZvciB0aGUgbW9kZXJuIGxv
cmUtdXNlcnM6Cmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyMDA1MDUwODM5MjYuMjg1MDMt
MS1tLnN6eXByb3dza2lAc2Ftc3VuZy5jb20vCgpHcntvZXRqZSxlZXRpbmd9cywKCiAgICAgICAg
ICAgICAgICAgICAgICAgIEdlZXJ0CgotLSAKR2VlcnQgVXl0dGVyaG9ldmVuIC0tIFRoZXJlJ3Mg
bG90cyBvZiBMaW51eCBiZXlvbmQgaWEzMiAtLSBnZWVydEBsaW51eC1tNjhrLm9yZwoKSW4gcGVy
c29uYWwgY29udmVyc2F0aW9ucyB3aXRoIHRlY2huaWNhbCBwZW9wbGUsIEkgY2FsbCBteXNlbGYg
YSBoYWNrZXIuIEJ1dAp3aGVuIEknbSB0YWxraW5nIHRvIGpvdXJuYWxpc3RzIEkganVzdCBzYXkg
InByb2dyYW1tZXIiIG9yIHNvbWV0aGluZyBsaWtlIHRoYXQuCiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgLS0gTGludXMgVG9ydmFsZHMKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1t
LXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbmFyby1tbS1zaWcK
