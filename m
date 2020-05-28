Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id C5B371E5AD8
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 May 2020 10:32:04 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6861B619F1
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 28 May 2020 08:32:03 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 587F565F89; Thu, 28 May 2020 08:32:03 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_HI,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 292D66179A;
	Thu, 28 May 2020 08:31:33 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B498E6173E
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 May 2020 08:31:30 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A5C7B6179A; Thu, 28 May 2020 08:31:30 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by lists.linaro.org (Postfix) with ESMTPS id 6BFE26173E
 for <linaro-mm-sig@lists.linaro.org>; Thu, 28 May 2020 08:31:29 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-431-X8CmvGu5MHitdtBIJs14og-1; Thu, 28 May 2020 04:31:21 -0400
X-MC-Unique: X8CmvGu5MHitdtBIJs14og-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6E9FCBFC2;
 Thu, 28 May 2020 08:31:19 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-113-50.ams2.redhat.com
 [10.36.113.50])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 09ADE62932;
 Thu, 28 May 2020 08:31:16 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id 450E616E2C; Thu, 28 May 2020 10:31:15 +0200 (CEST)
Date: Thu, 28 May 2020 10:31:15 +0200
From: Gerd Hoffmann <kraxel@redhat.com>
To: David Stevens <stevensd@chromium.org>
Message-ID: <20200528083115.a6p3y24x3vqzcj4k@sirius.home.kraxel.org>
References: <20200526105811.30784-1-stevensd@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200526105811.30784-1-stevensd@chromium.org>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: virtio-dev@lists.oasis-open.org, Thomas Zimmermann <tzimmermann@suse.de>,
 "Michael S . Tsirkin" <mst@redhat.com>, David Airlie <airlied@linux.ie>,
 Jason Wang <jasowang@redhat.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 virtualization@lists.linux-foundation.org, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH v4 0/3] Support virtio cross-device
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

T24gVHVlLCBNYXkgMjYsIDIwMjAgYXQgMDc6NTg6MDhQTSArMDkwMCwgRGF2aWQgU3RldmVucyB3
cm90ZToKPiBUaGlzIHBhdGNoc2V0IGltcGxlbWVudHMgdGhlIGN1cnJlbnQgcHJvcG9zYWwgZm9y
IHZpcnRpbyBjcm9zcy1kZXZpY2UKPiByZXNvdXJjZSBzaGFyaW5nIFsxXS4gSXQgd2lsbCBiZSB1
c2VkIHRvIGltcG9ydCB2aXJ0aW8gcmVzb3VyY2VzIGludG8KPiB0aGUgdmlydGlvLXZpZGVvIGRy
aXZlciBjdXJyZW50bHkgdW5kZXIgZGlzY3Vzc2lvbiBbMl0uIFRoZSBwYXRjaAo+IHVuZGVyIGNv
bnNpZGVyYXRpb24gdG8gYWRkIHN1cHBvcnQgaW4gdGhlIHZpcnRpby12aWRlbyBkcml2ZXIgaXMg
WzNdLgo+IEl0IHVzZXMgdGhlIEFQSXMgZnJvbSB2MyBvZiB0aGlzIHNlcmllcywgYnV0IHRoZSBj
aGFuZ2VzIHRvIHVwZGF0ZSBpdAo+IGFyZSByZWxhdGl2ZWx5IG1pbm9yLgo+IAo+IFRoaXMgcGF0
Y2hzZXQgYWRkcyBhIG5ldyBmbGF2b3Igb2YgZG1hLWJ1ZnMgdGhhdCBzdXBwb3J0cyBxdWVyeWlu
ZyB0aGUKPiB1bmRlcmx5aW5nIHZpcnRpbyBvYmplY3QgVVVJRCwgYXMgd2VsbCBhcyBhZGRpbmcg
c3VwcG9ydCBmb3IgZXhwb3J0aW5nCj4gcmVzb3VyY2VzIGZyb20gdmlydGdwdS4KPiAKPiBbMV0g
aHR0cHM6Ly9tYXJrbWFpbC5vcmcvdGhyZWFkLzJ5cGp0NWNmZXUzbTZseHUKPiBbMl0gaHR0cHM6
Ly9tYXJrbWFpbC5vcmcvdGhyZWFkL3A1ZDNrNTY2c3J0ZHR1dGUKPiBbM10gaHR0cHM6Ly9tYXJr
bWFpbC5vcmcvdGhyZWFkL2o0eGxxYWFpbTI2NnFwa3MKPiAKPiB2MyAtPiB2NCBjaGFuZ2VzOgo+
ICAtIFJlcGxhY2UgZG1hLWJ1ZiBob29rcyB3aXRoIHZpcnRpbyBkbWEtYnVmIGZyb20gdjEuCj4g
IC0gUmVtb3ZlIHZpcnRpb19hdHRhY2ggY2FsbGJhY2ssIGFzIHRoZSB3b3JrIHRoYXQgaGFkIGJl
ZW4gZG9uZQo+ICAgIGluIHRoYXQgY2FsbGJhY2sgaXMgbm93IGRvbmUgb24gZG1hLWJ1ZiBleHBv
cnQuIFRoZSBkb2N1bWVudGVkCj4gICAgcmVxdWlyZW1lbnQgdGhhdCBnZXRfdXVpZCBvbmx5IGJl
IGNhbGxlZCBvbiBhdHRhY2hlZCB2aXJ0aW8KPiAgICBkbWEtYnVmcyBpcyBhbHNvIHJlbW92ZWQu
Cj4gIC0gUmViYXNlIGFuZCBhZGQgY2FsbCB0byB2aXJ0aW9fZ3B1X25vdGlmeSBmb3IgQVNTSUdO
X1VVSUQuCj4gCj4gRGF2aWQgU3RldmVucyAoMyk6Cj4gICB2aXJ0aW86IGFkZCBkbWEtYnVmIHN1
cHBvcnQgZm9yIGV4cG9ydGVkIG9iamVjdHMKPiAgIHZpcnRpby1ncHU6IGFkZCBWSVJUSU9fR1BV
X0ZfUkVTT1VSQ0VfVVVJRCBmZWF0dXJlCj4gICBkcm0vdmlydGlvOiBTdXBwb3J0IHZpcnRncHUg
ZXhwb3J0ZWQgcmVzb3VyY2VzCgpMb29rcyBhbGwgc2FuZSB0byBtZS4gIG1zdCwgaGF2ZSB5b3Ug
bG9va2VkIGF0IHRoZSB2aXJ0aW8gY29yZSBjaGFuZ2VzPwpIb3cgd2UgYXJlIGdvaW5nIHRvIG1l
cmdlIHRoaXM/ICBJZiB5b3UgYWNrIEkgY2FuIG1lcmdlIHZpYQpkcm0tbWlzYy1uZXh0LiAgTWVy
Z2luZyB0aHJvdWdoIHZpcnRpbyBxdWV1ZSB3b3VsZCBiZSBmaW5lIHRvby4KCnRoYW5rcywKICBH
ZXJkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0
cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
