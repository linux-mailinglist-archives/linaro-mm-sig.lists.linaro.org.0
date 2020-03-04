Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 24EA6178C3E
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 Mar 2020 09:07:53 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 48D6A65FBE
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 Mar 2020 08:07:52 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 31BDA65FBF; Wed,  4 Mar 2020 08:07:52 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CB04865FBB;
	Wed,  4 Mar 2020 08:07:09 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id BA8E860F13
 for <linaro-mm-sig@lists.linaro.org>; Wed,  4 Mar 2020 08:07:05 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id AC35565FC1; Wed,  4 Mar 2020 08:07:05 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by lists.linaro.org (Postfix) with ESMTPS id 85A4C60F13
 for <linaro-mm-sig@lists.linaro.org>; Wed,  4 Mar 2020 08:05:53 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-136-LfdfQ2d3O6mP8LQD7TgVEQ-1; Wed, 04 Mar 2020 03:05:49 -0500
X-MC-Unique: LfdfQ2d3O6mP8LQD7TgVEQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6149E801E6C;
 Wed,  4 Mar 2020 08:05:47 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-116-150.ams2.redhat.com
 [10.36.116.150])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 41D545DA60;
 Wed,  4 Mar 2020 08:05:44 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id 7778C17506; Wed,  4 Mar 2020 09:05:43 +0100 (CET)
Date: Wed, 4 Mar 2020 09:05:43 +0100
From: Gerd Hoffmann <kraxel@redhat.com>
To: David Stevens <stevensd@chromium.org>
Message-ID: <20200304080543.jtf3kcfp6cyegkag@sirius.home.kraxel.org>
References: <20200302121524.7543-1-stevensd@chromium.org>
 <20200302121524.7543-5-stevensd@chromium.org>
 <CAAfnVBk46vsP77hx3kUHqVCPG8Eakh7Kgi0kEHZtrHD-0bHzqQ@mail.gmail.com>
 <CAD=HUj5-0CE-tm4meQ_Y7KB4Df41v=kBH2GTStYJptTOSp1yVw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD=HUj5-0CE-tm4meQ_Y7KB4Df41v=kBH2GTStYJptTOSp1yVw@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: virtio-dev@lists.oasis-open.org, Thomas Zimmermann <tzimmermann@suse.de>,
 "Michael S . Tsirkin" <mst@redhat.com>, David Airlie <airlied@linux.ie>,
 Jason Wang <jasowang@redhat.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 open list <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Gurchetan Singh <gurchetansingh@chromium.org>, linaro-mm-sig@lists.linaro.org,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 "open list:VIRTIO GPU DRIVER" <virtualization@lists.linux-foundation.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: Re: [Linaro-mm-sig] [virtio-dev] [PATCH v2 4/4] drm/virtio: Support
 virtgpu exported resources
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

T24gVHVlLCBNYXIgMDMsIDIwMjAgYXQgMTE6NDI6MjJBTSArMDkwMCwgRGF2aWQgU3RldmVucyB3
cm90ZToKPiA+IGNtZF9wLT5oZHIuY3R4X2lkID0KPiA+Cj4gPiBCZWZvcmUgdGhpcyBjb21wbGV0
aW9uIG9mIHRoaXMgaHlwZXJjYWxsLCB0aGlzIHJlc291cmNlIGNhbiBiZQo+ID4gY29uc2lkZXJl
ZCBjb250ZXh0IGxvY2FsLCB3aGlsZSBhZnRlcndhcmQgaXQgY2FuIGJlIGNvbnNpZGVyZWQKPiA+
ICJleHBvcnRlZCIuCj4gCj4gTWF5YmUgSSdtIG1pc3VuZGVyc3RhbmRpbmcgcmVuZGVyIGNvbnRl
eHRzLCBidXQgZXhwb3J0aW5nIGEgcmVzb3VyY2UKPiBkb2Vzbid0IHNlZW0gcmVsYXRlZCB0byBy
ZW5kZXIgY29udGV4dHMuCgpJdCBpc24ndCBpbmRlZWQuICBCaW5kaW5nIHJlc291cmNlcyB0byBj
b250ZXh0cyBtaWdodCBuZWVkIGRtYS1idWYKaW1wb3J0cy9leHBvcnRzIG9uIHRoZSBob3N0IHNp
ZGUsIGJ1dCB0aGF0IGlzIGFub3RoZXIgc3RvcnkgYW5kIG5vdApyZWxhdGVkIHRvIGRtYS1idWYg
ZXhwb3J0cyBpbnNpZGUgdGhlIGd1ZXN0LgoKY2hlZXJzLAogIEdlcmQKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
