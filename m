Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B25178BE7
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 Mar 2020 08:49:22 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1396A617F7
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 Mar 2020 07:49:22 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0612365FBF; Wed,  4 Mar 2020 07:49:22 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2E8F66182C;
	Wed,  4 Mar 2020 07:48:56 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0BD4A608E3
 for <linaro-mm-sig@lists.linaro.org>; Wed,  4 Mar 2020 07:48:54 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E57EF6182C; Wed,  4 Mar 2020 07:48:53 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by lists.linaro.org (Postfix) with ESMTPS id 18D91608E3
 for <linaro-mm-sig@lists.linaro.org>; Wed,  4 Mar 2020 07:48:53 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-467-fXX0MZD-OeewdNcRAR5oGg-1; Wed, 04 Mar 2020 02:48:48 -0500
X-MC-Unique: fXX0MZD-OeewdNcRAR5oGg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1483C8018A6;
 Wed,  4 Mar 2020 07:48:45 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-116-150.ams2.redhat.com
 [10.36.116.150])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EBD0891D6E;
 Wed,  4 Mar 2020 07:48:41 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id 2D00B17506; Wed,  4 Mar 2020 08:48:41 +0100 (CET)
Date: Wed, 4 Mar 2020 08:48:41 +0100
From: Gerd Hoffmann <kraxel@redhat.com>
To: David Stevens <stevensd@chromium.org>
Message-ID: <20200304074841.gbfzhxorta3pfk4f@sirius.home.kraxel.org>
References: <20200302121524.7543-1-stevensd@chromium.org>
 <20200302121524.7543-2-stevensd@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200302121524.7543-2-stevensd@chromium.org>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: virtio-dev@lists.oasis-open.org, Thomas Zimmermann <tzimmermann@suse.de>,
 "Michael S . Tsirkin" <mst@redhat.com>, David Airlie <airlied@linux.ie>,
 Jason Wang <jasowang@redhat.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 virtualization@lists.linux-foundation.org, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-media@vger.kernel.org
Subject: Re: [Linaro-mm-sig] [PATCH v2 1/4] dma-buf: add support for virtio
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

T24gTW9uLCBNYXIgMDIsIDIwMjAgYXQgMDk6MTU6MjFQTSArMDkwMCwgRGF2aWQgU3RldmVucyB3
cm90ZToKPiBUaGlzIGNoYW5nZSBhZGRzIGEgbmV3IGRtYS1idWYgb3BlcmF0aW9uIHRoYXQgYWxs
b3dzIGRtYS1idWZzIHRvIGJlIHVzZWQKPiBieSB2aXJ0aW8gZHJpdmVycyB0byBzaGFyZSBleHBv
cnRlZCBvYmplY3RzLiBUaGUgbmV3IG9wZXJhdGlvbiBhbGxvd3MKPiB0aGUgaW1wb3J0aW5nIGRy
aXZlciB0byBxdWVyeSB0aGUgZXhwb3J0aW5nIGRyaXZlciBmb3IgdGhlIFVVSUQgd2hpY2gKPiBp
ZGVudGlmaWVzIHRoZSB1bmRlcmx5aW5nIGV4cG9ydGVkIG9iamVjdC4KPiAKPiBTaWduZWQtb2Zm
LWJ5OiBEYXZpZCBTdGV2ZW5zIDxzdGV2ZW5zZEBjaHJvbWl1bS5vcmc+Cj4gLS0tCj4gIGRyaXZl
cnMvZG1hLWJ1Zi9kbWEtYnVmLmMgfCAxNCArKysrKysrKysrKysrKwo+ICBpbmNsdWRlL2xpbnV4
L2RtYS1idWYuaCAgIHwgMjIgKysrKysrKysrKysrKysrKysrKysrKwo+ICAyIGZpbGVzIGNoYW5n
ZWQsIDM2IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2Rt
YS1idWYuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKPiBpbmRleCBkNDA5Nzg1NmM4NmIu
LmEwNDYzMjI4NGVjMiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCj4g
KysrIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwo+IEBAIC0xMTU4LDYgKzExNTgsMjAgQEAg
dm9pZCBkbWFfYnVmX3Z1bm1hcChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLCB2b2lkICp2YWRkcikK
PiAgfQo+ICBFWFBPUlRfU1lNQk9MX0dQTChkbWFfYnVmX3Z1bm1hcCk7Cj4gIAo+ICsjaWZkZWYg
Q09ORklHX1ZJUlRJTwo+ICtpbnQgZG1hX2J1Zl9nZXRfdXVpZChzdHJ1Y3QgZG1hX2J1ZiAqZG1h
YnVmLCB1dWlkX3QgKnV1aWQpCgpIbW0sIEkgdGhpbmsgSSB3b3VsZCBkcm9wIHRoZSAjaWZkZWYK
CmNoZWVycywKICBHZXJkCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8vbGluYXJv
LW1tLXNpZwo=
