Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E1FF116B976
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 Feb 2020 07:10:46 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0FAA660389
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 Feb 2020 06:10:46 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0253B60C09; Tue, 25 Feb 2020 06:10:46 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5CB10617BF;
	Tue, 25 Feb 2020 06:10:23 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 37B5460C09
 for <linaro-mm-sig@lists.linaro.org>; Tue, 25 Feb 2020 06:10:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 2AAE861523; Tue, 25 Feb 2020 06:10:20 +0000 (UTC)
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 by lists.linaro.org (Postfix) with ESMTPS id E1AE0617BF
 for <linaro-mm-sig@lists.linaro.org>; Tue, 25 Feb 2020 06:10:18 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-105-DYyKaKDLN3CegtXVUSCMDQ-1; Tue, 25 Feb 2020 01:10:14 -0500
X-MC-Unique: DYyKaKDLN3CegtXVUSCMDQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8DBCF107ACC4;
 Tue, 25 Feb 2020 06:10:12 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-116-87.ams2.redhat.com
 [10.36.116.87])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 10680385;
 Tue, 25 Feb 2020 06:10:09 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id 2C95F1747F; Tue, 25 Feb 2020 07:10:08 +0100 (CET)
Date: Tue, 25 Feb 2020 07:10:08 +0100
From: Gerd Hoffmann <kraxel@redhat.com>
To: David Stevens <stevensd@chromium.org>
Message-ID: <20200225061008.wqxqppfglzmwvtid@sirius.home.kraxel.org>
References: <20200219080637.61312-1-stevensd@chromium.org>
 <20200219080637.61312-2-stevensd@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200219080637.61312-2-stevensd@chromium.org>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: virtio-dev@lists.oasis-open.org, "Michael S . Tsirkin" <mst@redhat.com>,
 David Airlie <airlied@linux.ie>, Jason Wang <jasowang@redhat.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org, linaro-mm-sig@lists.linaro.org,
 Daniel Vetter <daniel@ffwll.ch>, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 1/2] virtio: add dma-buf support for
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

T24gV2VkLCBGZWIgMTksIDIwMjAgYXQgMDU6MDY6MzZQTSArMDkwMCwgRGF2aWQgU3RldmVucyB3
cm90ZToKPiBUaGlzIGNoYW5nZSBhZGRzIGEgbmV3IGZsYXZvciBvZiBkbWEtYnVmcyB0aGF0IGNh
biBiZSB1c2VkIGJ5IHZpcnRpbwo+IGRyaXZlcnMgdG8gc2hhcmUgZXhwb3J0ZWQgb2JqZWN0cy4g
QSB2aXJ0aW8gZG1hLWJ1ZiBjYW4gYmUgcXVlcmllZCBieQo+IHZpcnRpbyBkcml2ZXJzIHRvIG9i
dGFpbiB0aGUgVVVJRCB3aGljaCBpZGVudGlmaWVzIHRoZSB1bmRlcmx5aW5nCj4gZXhwb3J0ZWQg
b2JqZWN0LgoKVGhhdCBkdXBsaWNhdGVzIGEgYnVuY2ggb2YgY29kZSBmcm9tIGRtYS1idWYuYyBp
biB2aXJ0aW9fZG1hX2J1Zi5jLgoKSG93IGFib3V0IGRtYV9idWZfe2dldCxzZXR9X3V1aWQsIHNp
bWxpYXIgdG8gZG1hX2J1Zl9zZXRfbmFtZT8KCmNoZWVycywKICBHZXJkCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcg
bGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8u
b3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
