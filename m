Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 9347C18C7AA
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 20 Mar 2020 07:49:11 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 27FEB6038D
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 20 Mar 2020 06:49:10 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0FD466600A; Fri, 20 Mar 2020 06:49:10 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0B96960F39;
	Fri, 20 Mar 2020 06:48:46 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 1F8646038D
 for <linaro-mm-sig@lists.linaro.org>; Fri, 20 Mar 2020 06:48:43 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 0871960F39; Fri, 20 Mar 2020 06:48:43 +0000 (UTC)
Received: from us-smtp-delivery-74.mimecast.com
 (us-smtp-delivery-74.mimecast.com [216.205.24.74])
 by lists.linaro.org (Postfix) with ESMTPS id 2BF4A6038D
 for <linaro-mm-sig@lists.linaro.org>; Fri, 20 Mar 2020 06:48:42 +0000 (UTC)
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-155-hj1uEHnlPI2nAfHMwlmZAQ-1; Fri, 20 Mar 2020 02:48:37 -0400
X-MC-Unique: hj1uEHnlPI2nAfHMwlmZAQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BBE23477;
 Fri, 20 Mar 2020 06:48:34 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-112-49.ams2.redhat.com
 [10.36.112.49])
 by smtp.corp.redhat.com (Postfix) with ESMTP id C96EEBBBF2;
 Fri, 20 Mar 2020 06:48:31 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id 954249DB3; Fri, 20 Mar 2020 07:48:30 +0100 (CET)
Date: Fri, 20 Mar 2020 07:48:30 +0100
From: Gerd Hoffmann <kraxel@redhat.com>
To: David Stevens <stevensd@chromium.org>
Message-ID: <20200320064830.svdgh4xuxbxz6bc4@sirius.home.kraxel.org>
References: <20200311112004.47138-1-stevensd@chromium.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311112004.47138-1-stevensd@chromium.org>
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
Subject: Re: [Linaro-mm-sig] [PATCH v3 0/4] Support virtio cross-device
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

T24gV2VkLCBNYXIgMTEsIDIwMjAgYXQgMDg6MjA6MDBQTSArMDkwMCwgRGF2aWQgU3RldmVucyB3
cm90ZToKPiBUaGlzIHBhdGNoc2V0IGltcGxlbWVudHMgdGhlIGN1cnJlbnQgcHJvcG9zYWwgZm9y
IHZpcnRpbyBjcm9zcy1kZXZpY2UKPiByZXNvdXJjZSBzaGFyaW5nIFsxXSwgd2l0aCBtaW5vciBj
aGFuZ2VzIGJhc2VkIG9uIHJlY2VudCBjb21tZW50cy4gSXQKPiBpcyBleHBlY3RlZCB0aGF0IHRo
aXMgd2lsbCBiZSB1c2VkIHRvIGltcG9ydCB2aXJ0aW8gcmVzb3VyY2VzIGludG8gdGhlCj4gdmly
dGlvLXZpZGVvIGRyaXZlciBjdXJyZW50bHkgdW5kZXIgZGlzY3Vzc2lvbiBbMl0uCj4gCj4gVGhp
cyBwYXRjaHNldCBhZGRzIGEgbmV3IGhvb2sgdG8gZG1hLWJ1ZiwgZm9yIHF1ZXJ5aW5nIHRoZSBk
bWEtYnVmJ3MKPiB1bmRlcmx5aW5nIHZpcnRpbyBVVUlELiBUaGlzIGhvb2sgaXMgdGhlbiBwbHVt
YmVkIHRocm91Z2ggRFJNIFBSSU1FCj4gYnVmZmVycywgYW5kIGZpbmFsbHkgaW1wbGVtZW50ZWQg
aW4gdmlydGdwdS4KCkxvb2tzIGFsbCBmaW5lIHRvIG1lLiAgV2Ugc2hvdWxkIHdhaXQgZm9yIHRo
ZSB2aXJ0aW8gcHJvdG9jb2wgdXBkYXRlCihwYXRjaCAzLzQpIGJlaW5nIGFjY2VwdGVkIGludG8g
dGhlIHZpcnRpbyBzcGVjaWZpY2F0aW9uLiAgV2hlbiB0aGlzIGlzCmRvbmUgSSdsbCBnbyBjb21t
aXQgdGhpcyB0byBkcm0tbWlzYy1uZXh0LgoKY2hlZXJzLAogIEdlcmQKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2lnCg==
