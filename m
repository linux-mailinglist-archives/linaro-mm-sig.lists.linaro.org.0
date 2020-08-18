Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B8F2247C03
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 03:53:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 38CD461813
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 01:53:02 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 24B7B619D1; Tue, 18 Aug 2020 01:53:02 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8893D617EF;
	Tue, 18 Aug 2020 01:52:34 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6945F60665
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Aug 2020 01:52:32 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 40556617EF; Tue, 18 Aug 2020 01:52:32 +0000 (UTC)
Received: from mail-qt1-f193.google.com (mail-qt1-f193.google.com
 [209.85.160.193])
 by lists.linaro.org (Postfix) with ESMTPS id 5993860665
 for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Aug 2020 01:52:31 +0000 (UTC)
Received: by mail-qt1-f193.google.com with SMTP id k18so14036950qtm.10
 for <linaro-mm-sig@lists.linaro.org>; Mon, 17 Aug 2020 18:52:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=szzpFDA9AlK4enccjSiFaUNDWItaYlytHuvona3L4xE=;
 b=Q5SiQ7eiYrUdJuxfCLQMfR7HSMU7NbtMmr4iVyaj0Ms3HIFaSrqGjX6QT6qIa8SmsY
 xqRb63eWmvx7Jg9OOMp7ypC0mpm4XtkEDT6fXhM08bGugOS2I96P/StGtyJyoK1bSizv
 6zu+2u6TGYdMKMZtEXHxe4nIBgXqYuS+z2MeuOWklJ5AbC5wD4y9LFj5IhckbU0h5iaQ
 RsnFDP2lRm3sc0uAbvwUd4saGRaeRWmtHmPnxnsLhQiCkUbOug6d+smVhzImybsduX8x
 CQijbMKwcKr8sl+84ntB/D5Z+hFR91yWri/4DEjOP/W5FBzodW8UHYU2Cs/Zm93xZrd1
 2t5Q==
X-Gm-Message-State: AOAM532KeAae5UkUIZAo3+IhVisCOwSePXMsbUH5M+L4kdPsDt6MmnXZ
 48psFZusiAZgU8UVmsp2Atmp8D7Fiz0GZNDKkx/+7Q==
X-Google-Smtp-Source: ABdhPJxTMwbSOeJZ+JjlM+dBnOrWPf2Un6ZL7ISpGYM5sJBiPu9rwbZVoK+XvNs2l/kehDF6aM8NBGUpgV8YpoFB/PU=
X-Received: by 2002:ac8:45c7:: with SMTP id e7mr16254448qto.187.1597715550749; 
 Mon, 17 Aug 2020 18:52:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200609012518.198908-1-stevensd@chromium.org>
 <20200609055021-mutt-send-email-mst@kernel.org>
 <CAD=HUj7wJfoKj_K44Cs9eEmh=OQHZ1+qz7ZHxoscHjYgOMXvZQ@mail.gmail.com>
 <20200817105008.mi3ukh6kxgi37gjs@sirius.home.kraxel.org>
 <20200817111234.i7pqtnnk2ciw4rqb@sirius.home.kraxel.org>
In-Reply-To: <20200817111234.i7pqtnnk2ciw4rqb@sirius.home.kraxel.org>
From: David Stevens <stevensd@chromium.org>
Date: Mon, 17 Aug 2020 18:52:19 -0700
Message-ID: <CAD=HUj65N3ejzYgUcpHLvPHguXFDC-B4OFeNOfvSML1zdoNRPg@mail.gmail.com>
To: Gerd Hoffmann <kraxel@redhat.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: virtio-dev@lists.oasis-open.org, Thomas Zimmermann <tzimmermann@suse.de>,
 "Michael S. Tsirkin" <mst@redhat.com>, David Airlie <airlied@linux.ie>,
 Jason Wang <jasowang@redhat.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 open list <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 "open list:VIRTIO GPU DRIVER" <virtualization@lists.linux-foundation.org>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 alex.williamson@redhat.com, ML dri-devel <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [virtio-dev] Re: [PATCH v5 0/3] Support virtio
	cross-device resources
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

T24gTW9uLCBBdWcgMTcsIDIwMjAgYXQgNDoxMiBBTSBHZXJkIEhvZmZtYW5uIDxrcmF4ZWxAcmVk
aGF0LmNvbT4gd3JvdGU6Cj4KPiBPbiBNb24sIEF1ZyAxNywgMjAyMCBhdCAxMjo1MDowOFBNICsw
MjAwLCBHZXJkIEhvZmZtYW5uIHdyb3RlOgo+ID4gT24gVHVlLCBKdW4gMjMsIDIwMjAgYXQgMTA6
MzE6MjhBTSArMDkwMCwgRGF2aWQgU3RldmVucyB3cm90ZToKPiA+ID4gVW5sZXNzIHRoZXJlIGFy
ZSBhbnkgcmVtYWluaW5nIG9iamVjdGlvbnMgdG8gdGhlc2UgcGF0Y2hlcywgd2hhdCBhcmUKPiA+
ID4gdGhlIG5leHQgc3RlcHMgdG93YXJkcyBnZXR0aW5nIHRoZXNlIG1lcmdlZD8gU29ycnksIEkn
bSBub3QgZmFtaWxpYXIKPiA+ID4gd2l0aCB0aGUgd29ya2Zsb3cgZm9yIGNvbnRyaWJ1dGluZyBw
YXRjaGVzIHRvIExpbnV4Lgo+ID4KPiA+IFNvcnJ5LCBqdXN0IGhhdmUgYmVlbiBidXN5IGFuZCBu
b3QgcGF5aW5nIGFzIG11Y2ggYXR0ZW50aW9uIHRvIGRybQo+ID4gcGF0Y2hlcyBhcyB1c3VhbC4g
IFBsYXlpbmcgY2F0Y2gtdXAgbm93LiAgUXVldWVkIGZvciBkcm0tbWlzYy1uZXh0LAo+ID4gdW5s
ZXNzIHNvbWV0aGluZyBnb2VzIHdyb25nIGluIG15IHRlc3RpbmcgdGhlIHBhdGNoZXMgc2hvdWxk
IGxhbmQKPiA+IGluIGxpbnV4LW5leHQgc29vbiBhbmQgYmUgbWVyZ2VkIHVwc3RyZWFtIGluIHRo
ZSBuZXh0IG1lcmdlIHdpbmRvdy4KPgo+IE9oLCBzcG9rZSB0b28gc29vbi4gIHNjcmlwdHMvY2hl
Y2twYXRjaC5wbCBoYXMgYSBidW5jaCBvZiBjb2Rlc3R5bGUKPiB3YXJuaW5ncy4gIENhbiB5b3Ug
Zml4IHRoZW0gYW5kIHJlc2VuZD8KClNlbnQgYSBuZXcgdmVyc2lvbiB0byBmaXggdGhlIGxpbmUg
bGVuZ3RoIHdhcm5pbmcuIFRoZXJlJ3Mgc3RpbGwgYQpNQUlOVEFJTkVSIHdhcm5pbmcsIGJ1dCBJ
IHRoaW5rIHRoZSBuZXcgdmlydGlvX2RtYV9idWYgZmlsZSBjYW4gZmFsbAp1bmRlciB2aXJ0aW8g
Y29yZSAoYW5kIHRoZSBleGlzdGluZyB3aWxkY2FyZHMgZG8gbWF0Y2ggaXQpLCByYXRoZXIKdGhh
biBnZXQgaXRzIG93biBNQUlOVEFJTkVSIGVudHJ5LiBJIGNhbiBicmVhayBpdCBvdXQgaW50byBp
dHMgb3duCnRoaW5nIGlmIHRoYXQncyBiZXR0ZXIsIHRob3VnaC4KCi1EYXZpZApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxp
bmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5h
cm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
