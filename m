Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 3440716B989
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 Feb 2020 07:16:17 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 455E6619AF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 25 Feb 2020 06:16:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 36CEB61523; Tue, 25 Feb 2020 06:16:16 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 41DD1618D2;
	Tue, 25 Feb 2020 06:15:51 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A32C661523
 for <linaro-mm-sig@lists.linaro.org>; Tue, 25 Feb 2020 06:15:48 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 96069618D2; Tue, 25 Feb 2020 06:15:48 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by lists.linaro.org (Postfix) with ESMTPS id C11DC61523
 for <linaro-mm-sig@lists.linaro.org>; Tue, 25 Feb 2020 06:15:47 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-360-2nRtSc6BMcuaowpCU87-3A-1; Tue, 25 Feb 2020 01:15:43 -0500
X-MC-Unique: 2nRtSc6BMcuaowpCU87-3A-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 281051005512;
 Tue, 25 Feb 2020 06:15:42 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-116-87.ams2.redhat.com
 [10.36.116.87])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 42A105D9CD;
 Tue, 25 Feb 2020 06:15:39 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id 7CFCF1747F; Tue, 25 Feb 2020 07:15:38 +0100 (CET)
Date: Tue, 25 Feb 2020 07:15:38 +0100
From: Gerd Hoffmann <kraxel@redhat.com>
To: David Stevens <stevensd@chromium.org>
Message-ID: <20200225061538.2qlkhfbhv2pl3oku@sirius.home.kraxel.org>
References: <20200219080637.61312-1-stevensd@chromium.org>
 <20200219080637.61312-3-stevensd@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200219080637.61312-3-stevensd@chromium.org>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: virtio-dev@lists.oasis-open.org, "Michael S . Tsirkin" <mst@redhat.com>,
 David Airlie <airlied@linux.ie>, Jason Wang <jasowang@redhat.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 virtualization@lists.linux-foundation.org, linaro-mm-sig@lists.linaro.org,
 Daniel Vetter <daniel@ffwll.ch>, linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH 2/2] drm/virtio: Support virtgpu
	exported resources
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

ICBIaSwKCj4gK3N0cnVjdCBkbWFfYnVmICp2aXJ0Z3B1X2dlbV9wcmltZV9leHBvcnQoc3RydWN0
IGRybV9nZW1fb2JqZWN0ICpvYmosCj4gKwkJCQkJIGludCBmbGFncykKPiArewpbIC4uLiBdCj4g
K30KPiArCj4gK3N0cnVjdCBkcm1fZ2VtX29iamVjdCAqdmlydGdwdV9nZW1fcHJpbWVfaW1wb3J0
KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCj4gKwkJCQkJCXN0cnVjdCBkbWFfYnVmICpidWYpCj4g
K3sKWyAuLi4gXQo+ICt9CgpNb3JlIGNvZGUgZHVwbGljYXRpb24uCgo+IGRpZmYgLS1naXQgYS9p
bmNsdWRlL3VhcGkvbGludXgvdmlydGlvX2dwdS5oIGIvaW5jbHVkZS91YXBpL2xpbnV4L3ZpcnRp
b19ncHUuaAo+IGluZGV4IDBjODU5MTRkOTM2OS4uOWM0MjhlZjAzMDYwIDEwMDY0NAo+IC0tLSBh
L2luY2x1ZGUvdWFwaS9saW51eC92aXJ0aW9fZ3B1LmgKPiArKysgYi9pbmNsdWRlL3VhcGkvbGlu
dXgvdmlydGlvX2dwdS5oCgpBUEkgY2hhbmdlIHNob3VsZCBnbyB0byBhIHNlcGFyYXRlIHBhdGNo
LgoKPiArLyoKPiArICogVklSVElPX0dQVV9DTURfUkVTT1VSQ0VfQVNTSUdOX1VVSUQKPiArICov
Cj4gKyNkZWZpbmUgVklSVElPX0dQVV9GX0NST1NTX0RFVklDRSAgICAgICAgMgoKSG1tLCBob3cg
YWJvdXQgVklSVElPX0dQVV9GX1JFU09VUkNFX1VVSUQgPwoKPiBAQCAtODcsNiArOTIsNyBAQCBl
bnVtIHZpcnRpb19ncHVfY3RybF90eXBlIHsKPiAgCVZJUlRJT19HUFVfUkVTUF9PS19DQVBTRVRf
SU5GTywKPiAgCVZJUlRJT19HUFVfUkVTUF9PS19DQVBTRVQsCj4gIAlWSVJUSU9fR1BVX1JFU1Bf
T0tfRURJRCwKPiArCVZJUlRJT19HUFVfUkVTUF9PS19SRVNPVVJDRV9BU1NJR05fVVVJRCwKClRo
ZSAiYXNzaWduIiBkb2Vzbid0IG1ha2Ugc2Vuc2UgaW4gdGhlIHJlcGx5LiAgSSdkIG5hbWUgdGhh
dApWSVJUSU9fR1BVX1JFU1BfT0tfUkVTT1VSQ0VfVVVJRCBvciBqdXN0IFZJUlRJT19HUFVfUkVT
UF9PS19VVUlELAoKPiArLyogVklSVElPX0dQVV9SRVNQX09LX1JFU09VUkNFX0FTU0lHTl9VVUlE
ICovCj4gK3N0cnVjdCB2aXJ0aW9fZ3B1X3Jlc3BfcmVzb3VyY2VfYXNzaWduX3V1aWQgewo+ICsJ
c3RydWN0IHZpcnRpb19ncHVfY3RybF9oZHIgaGRyOwo+ICsJX191OCB1dWlkWzE2XTsKPiArfTsK
ClNhbWUgaGVyZS4KCmNoZWVycywKICBHZXJkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0t
c2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlz
dGluZm8vbGluYXJvLW1tLXNpZwo=
