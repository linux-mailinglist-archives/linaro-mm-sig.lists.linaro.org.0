Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 504571703C9
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Feb 2020 17:07:52 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 77A606087C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 26 Feb 2020 16:07:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 681AE6196C; Wed, 26 Feb 2020 16:07:51 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A1237615AD;
	Wed, 26 Feb 2020 16:07:27 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 987766087C
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Feb 2020 16:07:25 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 774B4615AD; Wed, 26 Feb 2020 16:07:25 +0000 (UTC)
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 by lists.linaro.org (Postfix) with ESMTPS id BDD566087C
 for <linaro-mm-sig@lists.linaro.org>; Wed, 26 Feb 2020 16:07:24 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-189-WhzkhL_bOrG6VaE3qtfNWQ-1; Wed, 26 Feb 2020 11:07:20 -0500
X-MC-Unique: WhzkhL_bOrG6VaE3qtfNWQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BBC398018A1;
 Wed, 26 Feb 2020 16:07:18 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-116-150.ams2.redhat.com
 [10.36.116.150])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CA69319C69;
 Wed, 26 Feb 2020 16:07:15 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id BCA821FCE8; Wed, 26 Feb 2020 17:07:14 +0100 (CET)
Date: Wed, 26 Feb 2020 17:07:14 +0100
From: Gerd Hoffmann <kraxel@redhat.com>
To: David Stevens <stevensd@chromium.org>
Message-ID: <20200226160714.y2wt5ubtklljn576@sirius.home.kraxel.org>
References: <20200219080637.61312-1-stevensd@chromium.org>
 <20200219080637.61312-2-stevensd@chromium.org>
 <20200225061008.wqxqppfglzmwvtid@sirius.home.kraxel.org>
 <CAD=HUj7h1d8dXG94FUtj4fmeUvUM0dm6NW8WHGZAceHae0zGLw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD=HUj7h1d8dXG94FUtj4fmeUvUM0dm6NW8WHGZAceHae0zGLw@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: virtio-dev@lists.oasis-open.org, "Michael S . Tsirkin" <mst@redhat.com>,
 David Airlie <airlied@linux.ie>, Jason Wang <jasowang@redhat.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org, linaro-mm-sig@lists.linaro.org,
 Daniel Vetter <daniel@ffwll.ch>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [virtio-dev] Re: [PATCH 1/2] virtio: add
 dma-buf support for exported objects
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

T24gV2VkLCBGZWIgMjYsIDIwMjAgYXQgMTI6NTY6NThQTSArMDkwMCwgRGF2aWQgU3RldmVucyB3
cm90ZToKPiBPbiBUdWUsIEZlYiAyNSwgMjAyMCBhdCAzOjEwIFBNIEdlcmQgSG9mZm1hbm4gPGty
YXhlbEByZWRoYXQuY29tPiB3cm90ZToKPiA+Cj4gPiBIb3cgYWJvdXQgZG1hX2J1Zl97Z2V0LHNl
dH1fdXVpZCwgc2ltbGlhciB0byBkbWFfYnVmX3NldF9uYW1lPwo+IAo+IFdoaWxlIEknbSBub3Qg
b3Bwb3NlZCB0byBzdWNoIGFuIEFQSSwgSSdtIGFsc28gaGVzaXRhbnQgdG8gbWFrZQo+IGNoYW5n
ZXMgdG8gdGhlIGRtYS1idWYgQVBJIGZvciBhIHNpbmdsZSB1c2UgY2FzZS4KClNlZSB2aXJ0aW8t
d2F5bGFuZCBkaXNjdXNzaW9uLiAgSSBleHBlY3Qgd2Ugd2lsbCBzZWUgbW9yZSBjYXNlcyBzaG93
IHVwLgpNYXliZSB0aGlzIHNob3VsZCBldmVuIGdvIG9uZSBsZXZlbCB1cCwgdG8gc3RydWN0IGZp
bGUuCgpjaGVlcnMsCiAgR2VyZAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bmFyby1tbS1zaWcK
