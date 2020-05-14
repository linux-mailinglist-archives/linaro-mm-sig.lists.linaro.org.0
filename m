Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id AC6D91D2FD2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 14 May 2020 14:31:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D3C9B65F85
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 14 May 2020 12:31:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C69AF65F92; Thu, 14 May 2020 12:31:53 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E1A7B65F91;
	Thu, 14 May 2020 12:31:20 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id AC2C965F85
 for <linaro-mm-sig@lists.linaro.org>; Thu, 14 May 2020 12:31:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A0FB765F92; Thu, 14 May 2020 12:31:16 +0000 (UTC)
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by lists.linaro.org (Postfix) with ESMTPS id D7F2B65F85
 for <linaro-mm-sig@lists.linaro.org>; Thu, 14 May 2020 12:31:14 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id y3so3856071wrt.1
 for <linaro-mm-sig@lists.linaro.org>; Thu, 14 May 2020 05:31:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=5L3ztVTSKOLB244G65ZSGtUQqMEEP8hy+Z9x9uH8zas=;
 b=sVkFBBb/GYaSLxbADZmWq20uhqmWXg8/pDCNUaSdnn/003uAqlH94eaQ/hZE2QVMNy
 EyiMY4muy3NqWUVVP8WG/ztNLsHNCU+mIm4xz1UoCihWTdje3O+sNIg30eX1THUjMWSB
 Q2uPKFm1Dh+tU/JvuXSAotGOY5ZJAhm+e3WbmqGmjhRP0UU72ioWcmfodbb0VFugiEYj
 qXRYzlhaF1nRJmULL78bInGk3kzPtpD51xJTFkU47T5xZ17D3Pa8nm6J2hxiMb40Hk6U
 R5RMfty8ueG2UFtA42BylOmDh7z8FptdXB36nTapy45W5IIQQcfZCWTs3M2MdZgEckT9
 080w==
X-Gm-Message-State: AOAM533aEAnbQ1sSHkuE6M0ZrKYME+KLLZ8/sWehWTiIjR2DIHaxOkVm
 lp0PMvPSAYs0bMuCJoPaR7DvuQ==
X-Google-Smtp-Source: ABdhPJzO26HExPt8oSSN1CG6GZWaJbzzOwmK5nuzbTE+eMp+2gFxCEKVNXKRppRj4egecVynUjKUXg==
X-Received: by 2002:adf:f1c4:: with SMTP id z4mr5670993wro.25.1589459474052;
 Thu, 14 May 2020 05:31:14 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id o15sm3194658wrw.65.2020.05.14.05.31.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 May 2020 05:31:13 -0700 (PDT)
Date: Thu, 14 May 2020 14:31:11 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Gerd Hoffmann <kraxel@redhat.com>
Message-ID: <20200514123111.GQ206103@phenom.ffwll.local>
Mail-Followup-To: Gerd Hoffmann <kraxel@redhat.com>,
 David Stevens <stevensd@chromium.org>,
 Tomasz Figa <tfiga@chromium.org>, David Airlie <airlied@linux.ie>,
 "Michael S . Tsirkin" <mst@redhat.com>,
 Jason Wang <jasowang@redhat.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "open list:VIRTIO CORE, NET..." <virtualization@lists.linux-foundation.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 virtio-dev@lists.oasis-open.org
References: <20200311112004.47138-1-stevensd@chromium.org>
 <20200311112004.47138-2-stevensd@chromium.org>
 <CAKMK7uHFgiHLe9oiFBr-VR-6rU9-hLTpBTEVNh0ezyj54u70jw@mail.gmail.com>
 <20200514075952.zuc3zjtmasaqrw75@sirius.home.kraxel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200514075952.zuc3zjtmasaqrw75@sirius.home.kraxel.org>
X-Operating-System: Linux phenom 5.6.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: dri-devel <dri-devel@lists.freedesktop.org>,
 virtio-dev@lists.oasis-open.org, Thomas Zimmermann <tzimmermann@suse.de>,
 "Michael S . Tsirkin" <mst@redhat.com>, David Airlie <airlied@linux.ie>,
 Jason Wang <jasowang@redhat.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Tomasz Figa <tfiga@chromium.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 David Stevens <stevensd@chromium.org>, Daniel Vetter <daniel@ffwll.ch>,
 "open list:VIRTIO CORE, NET..." <virtualization@lists.linux-foundation.org>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH v3 1/4] dma-buf: add support for virtio
	exported objects
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

T24gVGh1LCBNYXkgMTQsIDIwMjAgYXQgMDk6NTk6NTJBTSArMDIwMCwgR2VyZCBIb2ZmbWFubiB3
cm90ZToKPiAgIEhpLAo+IAo+ID4gLSBmb3IgdGhlIHJ1bnRpbWUgdXBjYXN0aW5nIHRoZSB1c3Vh
bCBhcHByb2FjaCBpcyB0byBjaGVjayB0aGUgLT5vcHMKPiA+IHBvaW50ZXIuIFdoaWNoIG1lYW5z
IHRoYXQgd291bGQgbmVlZCB0byBiZSB0aGUgc2FtZSBmb3IgYWxsIHZpcnRpbwo+ID4gZG1hX2J1
ZnMsIHdoaWNoIG1pZ2h0IGdldCBhIGJpdCBhd2t3YXJkLiBCdXQgSSdkIHJlYWxseSBwcmVmZXIg
d2Ugbm90Cj4gPiBhZGQgYWxsb2NhdG9yIHNwZWNpZmljIHN0dWZmIGxpa2UgdGhpcyB0byBkbWEt
YnVmLgo+IAo+IFRoaXMgaXMgZXhhY3RseSB0aGUgcHJvYmxlbSwgaXQgZ2V0cyBtZXNzeSBxdWlj
a2x5LCBhbHNvIHdoZW4gaXQgY29tZXMKPiB0byB1c2luZyB0aGUgZHJtX3ByaW1lLmMgaGVscGVy
cyAuLi4KCmRybV9wcmltZS5jIGhlbHBlcnMgKG5vdCB0aGUgY29yZSBiaXRzKSBleGlzdCBiZWNh
dWVzIG52aWRpYSBuZWVkZWQKc29tZXRoaW5nIHRoYXQgd2FzbnQgRVhQT1JUX1NZTUJPTF9HUEwu
CgpJIHdvdWxkbid0IHNoZWQgYSBiaWcgdGVhciBpZiB0aGV5IGRvbid0IGZpdCBhbnltb3JlLCB0
aGV5J3JlIGtpbmRhIG5vdApncmVhdCB0byBiZWdpbiB3aXRoLiBNdWNoIG1pZGxheWVyLCBub3Qg
bXVjaCBvZiB2YWx1ZWQgYWRkZWQsIGJ1dCBhdCBsZWFzdAp0aGUgX0dQTCBpcyBnb25lLgotRGFu
aWVsCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlv
bgpodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8v
bGluYXJvLW1tLXNpZwo=
