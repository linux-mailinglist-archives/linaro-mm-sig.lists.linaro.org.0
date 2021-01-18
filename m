Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F6942FA374
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 Jan 2021 15:47:19 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BB378608E0
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 18 Jan 2021 14:47:18 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id ABF0D6671E; Mon, 18 Jan 2021 14:47:18 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3F8536179D;
	Mon, 18 Jan 2021 14:46:51 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 882046050C
 for <linaro-mm-sig@lists.linaro.org>; Mon, 18 Jan 2021 14:46:47 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 7407A6179D; Mon, 18 Jan 2021 14:46:47 +0000 (UTC)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
 [209.85.221.46])
 by lists.linaro.org (Postfix) with ESMTPS id D80EB6050C
 for <linaro-mm-sig@lists.linaro.org>; Mon, 18 Jan 2021 14:46:45 +0000 (UTC)
Received: by mail-wr1-f46.google.com with SMTP id 91so16720388wrj.7
 for <linaro-mm-sig@lists.linaro.org>; Mon, 18 Jan 2021 06:46:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=OFCYur2p1RG6wq2GuEDBaWE0Jb4tQR4iZ3ZSFGTYM3Q=;
 b=BgmY13rNdik+01rxHu7GcU2P7NrBvaL9Kovait4GDe+iHD4yFDTRl22GhYzx2nijAX
 DniFKFlpyuLIF6964/e89/QEqOGq//1q61sMrzk0wx6f0g4REqYJzPHgTeCtU8Dk545E
 sTxmkj25ontZ4w+zwt3zPRPwuBMZT2dwU1WCTY4G1nkoT56bj0vpha0GHlAqC4vRHlgh
 BtIuOE6x5Laqik+cJljdx586x1piUEEb7HAoSCvMFEDGhcno+Nwr/Zww6DqnQC7xxCMD
 tt0xPxID27XY0wpSC2gawGMugK91vieK5PhHIfhU7S/E3/81NOAiyHaooCu6nCH8d0/o
 E29A==
X-Gm-Message-State: AOAM533h1nJR0waE8qB/CwGnnaT49MHiA4KZm4rHqbuE1L3YQWJUwsvw
 EwVo91S+73KWvwa46QPEFDwQiA==
X-Google-Smtp-Source: ABdhPJyDCDO+1fmc1K2ew5LzU7f8vg/ienWX3/ewHzh+gElcHa7lnFCJ1WZ1SRCLGxPa5q6k2ZRqsw==
X-Received: by 2002:a5d:4491:: with SMTP id j17mr25684833wrq.78.1610981205075; 
 Mon, 18 Jan 2021 06:46:45 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id r1sm31249890wrl.95.2021.01.18.06.46.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Jan 2021 06:46:44 -0800 (PST)
Date: Mon, 18 Jan 2021 15:46:42 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Zack Rusin <zackr@vmware.com>
Message-ID: <YAWfUl56zsi18/Y+@phenom.ffwll.local>
Mail-Followup-To: Zack Rusin <zackr@vmware.com>,
 Lee Jones <lee.jones@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Alan Cox <alan@linux.intel.com>,
 Benjamin Defnet <benjamin.r.defnet@intel.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 David Airlie <airlied@linux.ie>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Eric Anholt <eric@anholt.net>,
 Jesse Barnes <jesse.barnes@intel.com>,
 "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 Patrik Jakobsson <patrik.r.jakobsson@gmail.com>,
 Rajesh Poornachandran <rajesh.poornachandran@intel.com>,
 Roland Scheidegger <sroland@vmware.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Linux-graphics-maintainer <Linux-graphics-maintainer@vmware.com>
References: <20210115181313.3431493-1-lee.jones@linaro.org>
 <328B978C-0A69-4220-BE63-7C4E4D627225@vmware.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <328B978C-0A69-4220-BE63-7C4E4D627225@vmware.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: Rajesh Poornachandran <rajesh.poornachandran@intel.com>,
 David Airlie <airlied@linux.ie>, Roland Scheidegger <sroland@vmware.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Benjamin Defnet <benjamin.r.defnet@intel.com>,
 Patrik Jakobsson <patrik.r.jakobsson@gmail.com>,
 "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>,
 Eric Anholt <eric@anholt.net>, Jesse Barnes <jesse.barnes@intel.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 Linux-graphics-maintainer <Linux-graphics-maintainer@vmware.com>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 Lee Jones <lee.jones@linaro.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Alan Cox <alan@linux.intel.com>
Subject: Re: [Linaro-mm-sig] [PATCH 00/40] [Set 14] Rid W=1 warnings from GPU
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

T24gRnJpLCBKYW4gMTUsIDIwMjEgYXQgMDY6MjI6MjNQTSArMDAwMCwgWmFjayBSdXNpbiB3cm90
ZToKPiAKPiA+IE9uIEphbiAxNSwgMjAyMSwgYXQgMTM6MTIsIExlZSBKb25lcyA8bGVlLmpvbmVz
QGxpbmFyby5vcmc+IHdyb3RlOgo+ID4gCj4gPiBUaGlzIHNldCBpcyBwYXJ0IG9mIGEgbGFyZ2Vy
IGVmZm9ydCBhdHRlbXB0aW5nIHRvIGNsZWFuLXVwIFc9MQo+ID4ga2VybmVsIGJ1aWxkcywgd2hp
Y2ggYXJlIGN1cnJlbnRseSBvdmVyd2hlbG1pbmdseSByaWRkbGVkIHdpdGgKPiA+IG5pZ2dseSBs
aXR0bGUgd2FybmluZ3MuCj4gPiAKPiA+IFBlbnVsdGltYXRlIHNldCwgcHJvbWlzZS4gOikKPiAK
PiAKPiBUaGFuayB5b3UgZm9yIGFsbCB0aGF0IHdvcmsuIEZvciBhbGwgdGhlIHZtd2dmeCBiaXRz
Ogo+IFJldmlld2VkLWJ5OiBaYWNrIFJ1c2luIDx6YWNrckB2bXdhcmUuY29tPgoKSSBwdWxsZWQg
YWxsIHRoZSBub24tdm14Z2Z4IHBhdGNoZXMgdG8gZHJtLW1pc2MtbmV4dCwgSSdsbCBsZWF2ZSB0
aGUgdm13CnN0dWZmIHRvIFphY2suCgpUaGFua3MgZm9yIHlvdXIgd29yayBoZXJlIQotRGFuaWVs
Ci0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJlIEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpo
dHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
YXJvLW1tLXNpZwo=
