Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 21FB723ED01
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  7 Aug 2020 13:57:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D11C566572
	for <lists+linaro-mm-sig@lfdr.de>; Fri,  7 Aug 2020 11:57:41 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C15F4665A6; Fri,  7 Aug 2020 11:57:41 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 502B266015;
	Fri,  7 Aug 2020 11:57:18 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B4BF4607B2
 for <linaro-mm-sig@lists.linaro.org>; Fri,  7 Aug 2020 11:57:15 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9621566015; Fri,  7 Aug 2020 11:57:15 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by lists.linaro.org (Postfix) with ESMTPS id B3321607B2
 for <linaro-mm-sig@lists.linaro.org>; Fri,  7 Aug 2020 11:57:14 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-321-x7C4o9zANwWgQB1b1vy1gw-1; Fri, 07 Aug 2020 07:57:10 -0400
X-MC-Unique: x7C4o9zANwWgQB1b1vy1gw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 85A3880BCB2;
 Fri,  7 Aug 2020 11:57:07 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-112-195.ams2.redhat.com
 [10.36.112.195])
 by smtp.corp.redhat.com (Postfix) with ESMTP id DC92F87A7A;
 Fri,  7 Aug 2020 11:57:05 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id BEDD7B1A; Fri,  7 Aug 2020 13:57:04 +0200 (CEST)
Date: Fri, 7 Aug 2020 13:57:04 +0200
From: Gerd Hoffmann <kraxel@redhat.com>
To: Xin He <hexin.op@bytedance.com>
Message-ID: <20200807115704.4epnok7vxwdmemns@sirius.home.kraxel.org>
References: <20200721101647.42653-1-hexin.op@bytedance.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200721101647.42653-1-hexin.op@bytedance.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: airlied@linux.ie, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 linaro-mm-sig@lists.linaro.org, daniel@ffwll.ch,
 Muchun Song <songmuchun@bytedance.com>, Qi Liu <liuqi.16@bytedance.com>,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH v3] drm/virtio: fix missing
 dma_fence_put() in virtio_gpu_execbuffer_ioctl()
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

T24gVHVlLCBKdWwgMjEsIDIwMjAgYXQgMDY6MTY6NDdQTSArMDgwMCwgWGluIEhlIHdyb3RlOgo+
IEZyb206IFFpIExpdSA8bGl1cWkuMTZAYnl0ZWRhbmNlLmNvbT4KPiAKPiBXZSBzaG91bGQgcHV0
IHRoZSByZWZlcmVuY2UgY291bnQgb2YgdGhlIGZlbmNlIGFmdGVyIGNhbGxpbmcKPiB2aXJ0aW9f
Z3B1X2NtZF9zdWJtaXQoKS4gU28gYWRkIHRoZSBtaXNzaW5nIGRtYV9mZW5jZV9wdXQoKS4KCj4g
IAl2aXJ0aW9fZ3B1X2NtZF9zdWJtaXQodmdkZXYsIGJ1ZiwgZXhidWYtPnNpemUsCj4gIAkJCSAg
ICAgIHZmcHJpdi0+Y3R4X2lkLCBidWZsaXN0LCBvdXRfZmVuY2UpOwo+ICsJZG1hX2ZlbmNlX3B1
dCgmb3V0X2ZlbmNlLT5mKTsKPiAgCXZpcnRpb19ncHVfbm90aWZ5KHZnZGV2KTsKClB1c2hlZCB0
byBkcm0tbWlzYy1maXhlcy4KCnRoYW5rcywKICBHZXJkCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5h
cm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxt
YW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
