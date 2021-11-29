Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id A9FA74614B5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Nov 2021 13:08:53 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 92EB062CA1
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 29 Nov 2021 12:08:51 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 4317662D2A; Mon, 29 Nov 2021 12:08:34 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1948F62D2A;
	Mon, 29 Nov 2021 12:08:29 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 6F38B60E24
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 12:07:37 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 70C2261A27; Mon, 29 Nov 2021 12:07:30 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
 [209.85.221.45])
 by lists.linaro.org (Postfix) with ESMTPS id 0B7A860B8E
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 12:07:26 +0000 (UTC)
Received: by mail-wr1-f45.google.com with SMTP id c4so36234722wrd.9
 for <linaro-mm-sig@lists.linaro.org>; Mon, 29 Nov 2021 04:07:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CtkJ4ZyrlGXLYLNyAbl2XqtGUnhKIK61F0cIYJH+rgs=;
 b=hFZQ7Wf2ThMK4Kov/Dv2SnYi3D7u4kzKzjSQ8AX2QU/GCquzNtMp18zmHP+23uIuUm
 bBOQnWWzKIsi4FrnfRYuiU5EKe8/LQ6hh5HuOzzFHXL0Df1F/J8fYDNbhFrlmrEM8mFz
 bjV0OOU6B2elOAHI9IJeJKJnwi275xqKpK0RbCt19TH6pR9Si9Uz7RWn23WO4+t73z/G
 KuIYYfemWIC9ZMvqsr+QXQGuSOuvoniVnD8R7A8iurUuV26MHDn1Vu8e0nnZqD89pLXZ
 lhy62fcQwH6Aq9t1tHORVZq6hTPp55/pgRkSlRN1PQIGzAM5htuTFqj4Uyx/cXo7Dnrn
 bWbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CtkJ4ZyrlGXLYLNyAbl2XqtGUnhKIK61F0cIYJH+rgs=;
 b=pkO/aTz2QlGDWmK/+s6wzjWiBias8Te20ylcBq0nTs+ljvCpY5+/ZdTZShjyus3R9H
 6pRlc3wlV2tSV2KGBBTTDQz+0tDYrEl0bPegwD0Ax9cCWN6ECdzXEAS8nGKruqvDQdX/
 vIVSQGJil99aY1uzaHOzFZtUTteducrK2pIgYqqif37x+P2T57wSA70NsByDoL/m+0pq
 yvQ1LVSLoybMEuy7kPzOcvtFuQ7UiSHOmPyVAA2VImUl0izXVaYE1b+5B8xvN4X28Acq
 h0sE9RFWMXopQ+MbkkynG1fwtlwr5Saf9O07uCU3ruvHF9VjauRJB7pP0kgjxLCjl9w8
 +ELQ==
X-Gm-Message-State: AOAM5337SWgEpW3X2cZx+hy+mo4IiPF/I8ncBRtA68W5C+z3et2+uJ0s
 LxiXaBbYjGAJp9y/zmfgd94=
X-Google-Smtp-Source: ABdhPJz962doMvhn03X+ZY/g+6uiiAPD6K5IJ8HZjvKQ5sMZE8sDlV5ApFT8d9w3VQFXWjIQq19wSw==
X-Received: by 2002:adf:d22a:: with SMTP id k10mr34329840wrh.80.1638187644851; 
 Mon, 29 Nov 2021 04:07:24 -0800 (PST)
Received: from abel.fritz.box (p57b0b77b.dip0.t-ipconnect.de. [87.176.183.123])
 by smtp.gmail.com with ESMTPSA id b6sm20415234wmq.45.2021.11.29.04.07.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Nov 2021 04:07:24 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch
Date: Mon, 29 Nov 2021 13:06:48 +0100
Message-Id: <20211129120659.1815-18-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211129120659.1815-1-christian.koenig@amd.com>
References: <20211129120659.1815-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 17/28] dma-buf: drop the DAG approach for
 the dma_resv object
X-BeenThere: linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 2.1.29
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
Cc: linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

U28gZmFyIHdlIGhhZCB0aGUgYXBwcm9hY2ggb2YgdXNpbmcgYSBkaXJlY3RlZCBhY3ljbGljCmdy
YXBoIHdpdGggdGhlIGRtYV9yZXN2IG9iai4KClRoaXMgdHVybmVkIG91dCB0byBoYXZlIG1hbnkg
ZG93bnNpZGVzLCBlc3BlY2lhbGx5IGl0IG1lYW5zCnRoYXQgZXZlcnkgc2luZ2xlIGRyaXZlciBh
bmQgdXNlciBvZiB0aGlzIGludGVyZmFjZSBuZWVkcwp0byBiZSBhd2FyZSBvZiB0aGlzIHJlc3Ry
aWN0aW9uIHdoZW4gYWRkaW5nIGZlbmNlcy4gSWYgdGhlCnJ1bGVzIGZvciB0aGUgREFHIGFyZSBu
b3QgZm9sbG93ZWQgdGhlbiB3ZSBlbmQgdXAgd2l0aApwb3RlbnRpYWwgaGFyZCB0byBkZWJ1ZyBt
ZW1vcnkgY29ycnVwdGlvbiwgaW5mb3JtYXRpb24KbGVha3Mgb3IgZXZlbiBlbGVwaGFudCBiaWcg
c2VjdXJpdHkgaG9sZXMgYmVjYXVzZSB3ZSBhbGxvdwp1c2Vyc3BhY2UgdG8gYWNjZXNzIGZyZWVk
IHVwIG1lbW9yeS4KClNpbmNlIHdlIGFscmVhZHkgdG9vayBhIHN0ZXAgYmFjayBmcm9tIHRoYXQg
YnkgYWx3YXlzCmxvb2tpbmcgYXQgYWxsIGZlbmNlcyB3ZSBub3cgZ28gYSBzdGVwIGZ1cnRoZXIg
YW5kIHN0b3AKZHJvcHBpbmcgdGhlIHNoYXJlZCBmZW5jZXMgd2hlbiBhIG5ldyBleGNsdXNpdmUg
b25lIGlzCmFkZGVkLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFu
LmtvZW5pZ0BhbWQuY29tPgotLS0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jIHwgMTMgLS0t
LS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1yZXN2LmMK
aW5kZXggOWFjY2VhYmM5Mzk5Li5lY2IyZmY2MDZiYWMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZG1h
LWJ1Zi9kbWEtcmVzdi5jCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtcmVzdi5jCkBAIC0zODMs
MjkgKzM4MywxNiBAQCBFWFBPUlRfU1lNQk9MKGRtYV9yZXN2X3JlcGxhY2VfZmVuY2VzKTsKIHZv
aWQgZG1hX3Jlc3ZfYWRkX2V4Y2xfZmVuY2Uoc3RydWN0IGRtYV9yZXN2ICpvYmosIHN0cnVjdCBk
bWFfZmVuY2UgKmZlbmNlKQogewogCXN0cnVjdCBkbWFfZmVuY2UgKm9sZF9mZW5jZSA9IGRtYV9y
ZXN2X2V4Y2xfZmVuY2Uob2JqKTsKLQlzdHJ1Y3QgZG1hX3Jlc3ZfbGlzdCAqb2xkOwotCXUzMiBp
ID0gMDsKIAogCWRtYV9yZXN2X2Fzc2VydF9oZWxkKG9iaik7CiAKLQlvbGQgPSBkbWFfcmVzdl9z
aGFyZWRfbGlzdChvYmopOwotCWlmIChvbGQpCi0JCWkgPSBvbGQtPnNoYXJlZF9jb3VudDsKLQog
CWRtYV9mZW5jZV9nZXQoZmVuY2UpOwogCiAJd3JpdGVfc2VxY291bnRfYmVnaW4oJm9iai0+c2Vx
KTsKIAkvKiB3cml0ZV9zZXFjb3VudF9iZWdpbiBwcm92aWRlcyB0aGUgbmVjZXNzYXJ5IG1lbW9y
eSBiYXJyaWVyICovCiAJUkNVX0lOSVRfUE9JTlRFUihvYmotPmZlbmNlX2V4Y2wsIGZlbmNlKTsK
LQlpZiAob2xkKQotCQlvbGQtPnNoYXJlZF9jb3VudCA9IDA7CiAJd3JpdGVfc2VxY291bnRfZW5k
KCZvYmotPnNlcSk7CiAKLQkvKiBpbnBsYWNlIHVwZGF0ZSwgbm8gc2hhcmVkIGZlbmNlcyAqLwot
CXdoaWxlIChpLS0pCi0JCWRtYV9mZW5jZV9wdXQocmN1X2RlcmVmZXJlbmNlX3Byb3RlY3RlZChv
bGQtPnNoYXJlZFtpXSwKLQkJCQkJCWRtYV9yZXN2X2hlbGQob2JqKSkpOwotCiAJZG1hX2ZlbmNl
X3B1dChvbGRfZmVuY2UpOwogfQogRVhQT1JUX1NZTUJPTChkbWFfcmVzdl9hZGRfZXhjbF9mZW5j
ZSk7Ci0tIAoyLjI1LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8t
bW0tc2lnCg==
