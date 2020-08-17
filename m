Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id ED394246537
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Aug 2020 13:15:27 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 14A91617B9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Aug 2020 11:15:27 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 07FC365F75; Mon, 17 Aug 2020 11:15:27 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,RDNS_NONE,
	SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4222D60665;
	Mon, 17 Aug 2020 11:14:50 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 438C26038C
 for <linaro-mm-sig@lists.linaro.org>; Mon, 17 Aug 2020 11:14:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 3675B60785; Mon, 17 Aug 2020 11:14:46 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (unknown [205.139.110.120])
 by lists.linaro.org (Postfix) with ESMTPS id 05AA66038C
 for <linaro-mm-sig@lists.linaro.org>; Mon, 17 Aug 2020 11:12:47 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-420-AxrCrgTLPfKBA1qS5-fhAQ-1; Mon, 17 Aug 2020 07:12:44 -0400
X-MC-Unique: AxrCrgTLPfKBA1qS5-fhAQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 184321DDE5;
 Mon, 17 Aug 2020 11:12:42 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-112-195.ams2.redhat.com
 [10.36.112.195])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 91FD01002393;
 Mon, 17 Aug 2020 11:12:35 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id 6A0F29D8F; Mon, 17 Aug 2020 13:12:34 +0200 (CEST)
Date: Mon, 17 Aug 2020 13:12:34 +0200
From: Gerd Hoffmann <kraxel@redhat.com>
To: David Stevens <stevensd@chromium.org>
Message-ID: <20200817111234.i7pqtnnk2ciw4rqb@sirius.home.kraxel.org>
References: <20200609012518.198908-1-stevensd@chromium.org>
 <20200609055021-mutt-send-email-mst@kernel.org>
 <CAD=HUj7wJfoKj_K44Cs9eEmh=OQHZ1+qz7ZHxoscHjYgOMXvZQ@mail.gmail.com>
 <20200817105008.mi3ukh6kxgi37gjs@sirius.home.kraxel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200817105008.mi3ukh6kxgi37gjs@sirius.home.kraxel.org>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
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

T24gTW9uLCBBdWcgMTcsIDIwMjAgYXQgMTI6NTA6MDhQTSArMDIwMCwgR2VyZCBIb2ZmbWFubiB3
cm90ZToKPiBPbiBUdWUsIEp1biAyMywgMjAyMCBhdCAxMDozMToyOEFNICswOTAwLCBEYXZpZCBT
dGV2ZW5zIHdyb3RlOgo+ID4gVW5sZXNzIHRoZXJlIGFyZSBhbnkgcmVtYWluaW5nIG9iamVjdGlv
bnMgdG8gdGhlc2UgcGF0Y2hlcywgd2hhdCBhcmUKPiA+IHRoZSBuZXh0IHN0ZXBzIHRvd2FyZHMg
Z2V0dGluZyB0aGVzZSBtZXJnZWQ/IFNvcnJ5LCBJJ20gbm90IGZhbWlsaWFyCj4gPiB3aXRoIHRo
ZSB3b3JrZmxvdyBmb3IgY29udHJpYnV0aW5nIHBhdGNoZXMgdG8gTGludXguCj4gCj4gU29ycnks
IGp1c3QgaGF2ZSBiZWVuIGJ1c3kgYW5kIG5vdCBwYXlpbmcgYXMgbXVjaCBhdHRlbnRpb24gdG8g
ZHJtCj4gcGF0Y2hlcyBhcyB1c3VhbC4gIFBsYXlpbmcgY2F0Y2gtdXAgbm93LiAgUXVldWVkIGZv
ciBkcm0tbWlzYy1uZXh0LAo+IHVubGVzcyBzb21ldGhpbmcgZ29lcyB3cm9uZyBpbiBteSB0ZXN0
aW5nIHRoZSBwYXRjaGVzIHNob3VsZCBsYW5kCj4gaW4gbGludXgtbmV4dCBzb29uIGFuZCBiZSBt
ZXJnZWQgdXBzdHJlYW0gaW4gdGhlIG5leHQgbWVyZ2Ugd2luZG93LgoKT2gsIHNwb2tlIHRvbyBz
b29uLiAgc2NyaXB0cy9jaGVja3BhdGNoLnBsIGhhcyBhIGJ1bmNoIG9mIGNvZGVzdHlsZQp3YXJu
aW5ncy4gIENhbiB5b3UgZml4IHRoZW0gYW5kIHJlc2VuZD8KCnRoYW5rcywKICBHZXJkCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0
cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
