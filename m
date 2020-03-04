Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A9C4178C15
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 Mar 2020 09:02:00 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AAFCB6182C
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  4 Mar 2020 08:01:59 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 9591865FBE; Wed,  4 Mar 2020 08:01:59 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C816965FBB;
	Wed,  4 Mar 2020 08:01:34 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id A6177617F7
 for <linaro-mm-sig@lists.linaro.org>; Wed,  4 Mar 2020 08:01:31 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 992E365FBB; Wed,  4 Mar 2020 08:01:31 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by lists.linaro.org (Postfix) with ESMTPS id CB769617F7
 for <linaro-mm-sig@lists.linaro.org>; Wed,  4 Mar 2020 08:01:30 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-76-7VMskJu9NeKxqy4Gs6rfng-1; Wed, 04 Mar 2020 03:01:26 -0500
X-MC-Unique: 7VMskJu9NeKxqy4Gs6rfng-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C8551801E5C;
 Wed,  4 Mar 2020 08:01:23 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-116-150.ams2.redhat.com
 [10.36.116.150])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B825D1BC6D;
 Wed,  4 Mar 2020 08:01:20 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id 0266617506; Wed,  4 Mar 2020 09:01:20 +0100 (CET)
Date: Wed, 4 Mar 2020 09:01:19 +0100
From: Gerd Hoffmann <kraxel@redhat.com>
To: David Stevens <stevensd@chromium.org>
Message-ID: <20200304080119.i55opxkhk4kdt4hp@sirius.home.kraxel.org>
References: <20200302121524.7543-1-stevensd@chromium.org>
 <20200302121524.7543-5-stevensd@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200302121524.7543-5-stevensd@chromium.org>
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
Subject: Re: [Linaro-mm-sig] [PATCH v2 4/4] drm/virtio: Support virtgpu
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

ICBIaSwKCj4gKwlpZiAodmdkZXYtPmhhc19yZXNvdXJjZV9hc3NpZ25fdXVpZCkgewo+ICsJCXNw
aW5fbG9jaygmdmdkZXYtPnJlc291cmNlX2V4cG9ydF9sb2NrKTsKPiArCQlpZiAoYm8tPnV1aWRf
c3RhdGUgPT0gVVVJRF9OT1RfSU5JVElBTElaRUQpIHsKPiArCQkJYm8tPnV1aWRfc3RhdGUgPSBV
VUlEX0lOSVRJQUxJWklORzsKPiArCQkJbmVlZHNfaW5pdCA9IHRydWU7Cj4gKwkJfQo+ICsJCXNw
aW5fdW5sb2NrKCZ2Z2Rldi0+cmVzb3VyY2VfZXhwb3J0X2xvY2spOwo+ICsKPiArCQlpZiAobmVl
ZHNfaW5pdCkgewo+ICsJCQlyZXQgPSB2aXJ0aW9fZ3B1X2NtZF9yZXNvdXJjZV9hc3NpZ25fdXVp
ZCh2Z2RldiwgYm8pOwoKWW91IGNhbiBzdWJtaXQgYSBmZW5jZWQgY29tbWFuZCwgdGhlbiB3YWl0
IG9uIHRoZSBmZW5jZSBoZXJlLiAgUmVtb3Zlcwp0aGUgbmVlZCBmb3IgVVVJRF9JTklUSUFMSVpJ
TkcuCgpBbHNvIG5vdGUgdGhhdCB0aGlzIGZ1bmN0aW9uIHdpbGwgYmUgY2FsbGVkIG9ubHkgb25j
ZSwgb24gdGhlIGZpcnN0CmV4cG9ydC4gIFdoZW4gZXhwb3J0aW5nIHRoZSBzYW1lIG9iamVjdCBh
Z2FpbiBkcm0gd2lsbCBzaW1wbHkgcmV1c2UKdGhlIGV4aXN0aW5nIGRtYWJ1Zi4gIFlvdSBjYW4g
ZHJvcCBVVUlEX05PVF9JTklUSUFMSVpFRCBhbmQgbmVlZHNfaW5pdC4KClNvIHlvdSBhcmUgbGVm
dCB3aXRoIG9ubHkgdHdvIHV1aWRfc3RhdGUgc3RhdGVzLiAgWW91IGNvdWxkIHR1cm4gdXVpZApp
bnRvIGEgcG9pbnRlciwgc28gaXQgZ2V0cyBvbmx5IGFsbG9jYXRlZCB3aGVuIG5lZWRlZC4gIEFs
c28gdXVpZCA9PQpOVUxMIGNhbiBiZSB1c2VkIGZvciAidXVpZCBub3QgYXZhaWxhYmxlIiB0aGVu
LgoKY2hlZXJzLAogIEdlcmQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5h
cm8tbW0tc2lnCg==
