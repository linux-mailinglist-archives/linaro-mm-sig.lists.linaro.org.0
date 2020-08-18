Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 35CAE247F11
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 09:12:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DAD6C6156D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 07:12:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C97A2619B1; Tue, 18 Aug 2020 07:12:02 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C857A60E68;
	Tue, 18 Aug 2020 07:11:36 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E6A0E60BD7
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Aug 2020 07:11:33 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D9A1060E68; Tue, 18 Aug 2020 07:11:33 +0000 (UTC)
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
 [209.85.160.194])
 by lists.linaro.org (Postfix) with ESMTPS id C988A60BD7
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Aug 2020 07:11:31 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id c12so14451433qtn.9
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Aug 2020 00:11:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=n3a7THydnGAc5AUiVljLET4u580OnrFmLIy37AEhH7s=;
 b=Y/VSgVY6jhrqTj3yM+POA0UlSJae0d6M/Q+yO9o3aB5MxIB0T9KkDQbrHhPyGo0TbE
 i4yjAlb6zmgZQM6yocxakjY60wgtGyEV6tLW4ysEj2V+qFMjHdsPdfOZx520jNBHaugi
 8b0ZhQGTEun5p/THNFFftq5jhtCMNR0B0bEZqTLA+fw3cnJh9a3FCQW8pQyDvsQVNTc8
 vMfKMBPYVrP2uw+Dpfo//U8iSd9eJw2obVOPC46Kc9ye0rX7qR1EUgaKPrOGez9wdbj4
 W2NwK4ph8XgHYHZGtPAewadvOlphm4pCiCtpyyST2aMWMukCLxi60tthtmFreoDLm5AT
 VECQ==
X-Gm-Message-State: AOAM533fcaBQ7nOyF5G6HqvqeAnKKgTBuHphndJWxExxtNEdPJyFC6b8
 MaLUSiwgMzlDQzGspUSsVwAFBbL9uMtreRY1aPytQQ==
X-Google-Smtp-Source: ABdhPJyZusOXlJEolyPUq2uzLSLnrLlZCeUK74TdElz/4gT5+YLKvVKLVDF3+1Btr0gUklkg9hbaYCqMSoip66/ILus=
X-Received: by 2002:aed:3587:: with SMTP id c7mr17004433qte.136.1597734691473; 
 Tue, 18 Aug 2020 00:11:31 -0700 (PDT)
MIME-Version: 1.0
References: <20200818013744.3327271-1-stevensd@chromium.org>
 <20200818055949.6si4jzuubba5dx5u@sirius.home.kraxel.org>
In-Reply-To: <20200818055949.6si4jzuubba5dx5u@sirius.home.kraxel.org>
From: David Stevens <stevensd@chromium.org>
Date: Tue, 18 Aug 2020 00:11:21 -0700
Message-ID: <CAD=HUj5xqNE=7VPMH5MDq8h735-OnbancrkemJGkDKYmeddfNQ@mail.gmail.com>
To: Gerd Hoffmann <kraxel@redhat.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: virtio-dev@lists.oasis-open.org, Thomas Zimmermann <tzimmermann@suse.de>,
 "Michael S . Tsirkin" <mst@redhat.com>, David Airlie <airlied@linux.ie>,
 Jason Wang <jasowang@redhat.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 open list <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 "open list:VIRTIO GPU DRIVER" <virtualization@lists.linux-foundation.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [PATCH v6 0/3] Support virtio cross-device
	resources
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

PiBIbW0sIGNoZWNrcGF0Y2ggc3RpbGwgY29tcGxhaW5zLCBmdWxsIGxvZyBiZWxvdy4KPgo+IElJ
UkMgImRpbSBjaGVja3BhdGNoIiBydW5zIHNjcmlwdHMvY2hlY2twYXRjaC5wbCB3aXRoIC0tc3Ry
aWN0Cj4gc28gaXQgaXMgYSBiaXQgbW9yZSBwaWNreSAuLi4KCkFoLCBJIGRpZG4ndCBrbm93IC0t
c3RyaWN0IHdhcyBiZWluZyB1c2VkLiBJJ2xsIHNlbmQgYW4gdXBkYXRlCm1vbWVudGFyaWx5LiBT
b3JyeSBmb3IgdGhlIGNodXJuLgoKPiAtOjI1MDogQ0hFQ0s6UFJFRkVSX0tFUk5FTF9UWVBFUzog
UHJlZmVyIGtlcm5lbCB0eXBlICd1MzInIG92ZXIgJ3VpbnQzMl90Jwo+ICMyNTA6IEZJTEU6IGRy
aXZlcnMvZ3B1L2RybS92aXJ0aW8vdmlydGdwdV92cS5jOjExMTg6Cj4gKyAgICAgICB1aW50MzJf
dCByZXNwX3R5cGUgPSBsZTMyX3RvX2NwdShyZXNwLT5oZHIudHlwZSk7Cj4KCkZvciBjb25zaXN0
ZW5jeSB3aXRoIHRoZSByZXN0IG9mIHRoZSB2aXJ0Z3B1IGNvZGUsIEknbGwgbGVhdmUgdWludDMy
X3QuCgpDaGVlcnMsCkRhdmlkCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5h
cm8tbW0tc2lnCg==
