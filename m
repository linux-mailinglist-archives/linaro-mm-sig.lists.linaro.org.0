Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B5522464D4
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Aug 2020 12:50:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B9ADC60654
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 17 Aug 2020 10:50:49 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A993A60665; Mon, 17 Aug 2020 10:50:49 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RDNS_NONE,SPF_HELO_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1D623614E1;
	Mon, 17 Aug 2020 10:50:25 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0031A60654
 for <linaro-mm-sig@lists.linaro.org>; Mon, 17 Aug 2020 10:50:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E78D0614E1; Mon, 17 Aug 2020 10:50:21 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (unknown [63.128.21.124])
 by lists.linaro.org (Postfix) with ESMTPS id F19D760654
 for <linaro-mm-sig@lists.linaro.org>; Mon, 17 Aug 2020 10:50:20 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-174-meOXaXeZPg-AMW_PNZAmuA-1; Mon, 17 Aug 2020 06:50:18 -0400
X-MC-Unique: meOXaXeZPg-AMW_PNZAmuA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 91CB11014DEE;
 Mon, 17 Aug 2020 10:50:16 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-112-195.ams2.redhat.com
 [10.36.112.195])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CD94A10013D5;
 Mon, 17 Aug 2020 10:50:09 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id E51B79D5A; Mon, 17 Aug 2020 12:50:08 +0200 (CEST)
Date: Mon, 17 Aug 2020 12:50:08 +0200
From: Gerd Hoffmann <kraxel@redhat.com>
To: David Stevens <stevensd@chromium.org>
Message-ID: <20200817105008.mi3ukh6kxgi37gjs@sirius.home.kraxel.org>
References: <20200609012518.198908-1-stevensd@chromium.org>
 <20200609055021-mutt-send-email-mst@kernel.org>
 <CAD=HUj7wJfoKj_K44Cs9eEmh=OQHZ1+qz7ZHxoscHjYgOMXvZQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD=HUj7wJfoKj_K44Cs9eEmh=OQHZ1+qz7ZHxoscHjYgOMXvZQ@mail.gmail.com>
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

T24gVHVlLCBKdW4gMjMsIDIwMjAgYXQgMTA6MzE6MjhBTSArMDkwMCwgRGF2aWQgU3RldmVucyB3
cm90ZToKPiBVbmxlc3MgdGhlcmUgYXJlIGFueSByZW1haW5pbmcgb2JqZWN0aW9ucyB0byB0aGVz
ZSBwYXRjaGVzLCB3aGF0IGFyZQo+IHRoZSBuZXh0IHN0ZXBzIHRvd2FyZHMgZ2V0dGluZyB0aGVz
ZSBtZXJnZWQ/IFNvcnJ5LCBJJ20gbm90IGZhbWlsaWFyCj4gd2l0aCB0aGUgd29ya2Zsb3cgZm9y
IGNvbnRyaWJ1dGluZyBwYXRjaGVzIHRvIExpbnV4LgoKU29ycnksIGp1c3QgaGF2ZSBiZWVuIGJ1
c3kgYW5kIG5vdCBwYXlpbmcgYXMgbXVjaCBhdHRlbnRpb24gdG8gZHJtCnBhdGNoZXMgYXMgdXN1
YWwuICBQbGF5aW5nIGNhdGNoLXVwIG5vdy4gIFF1ZXVlZCBmb3IgZHJtLW1pc2MtbmV4dCwKdW5s
ZXNzIHNvbWV0aGluZyBnb2VzIHdyb25nIGluIG15IHRlc3RpbmcgdGhlIHBhdGNoZXMgc2hvdWxk
IGxhbmQKaW4gbGludXgtbmV4dCBzb29uIGFuZCBiZSBtZXJnZWQgdXBzdHJlYW0gaW4gdGhlIG5l
eHQgbWVyZ2Ugd2luZG93LgoKdGFrZSBjYXJlLAogIEdlcmQKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0Ckxp
bmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
