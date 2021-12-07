Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 34FD446BB60
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Dec 2021 13:35:40 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CCB7D62F8B
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  7 Dec 2021 12:35:38 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 6C9CD62C9F; Tue,  7 Dec 2021 12:35:15 +0000 (UTC)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9833962AF5;
	Tue,  7 Dec 2021 12:35:09 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 3A5FA61EB5
 for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Dec 2021 12:34:39 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 9E15362D41; Tue,  7 Dec 2021 12:34:33 +0000 (UTC)
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
 [209.85.221.42])
 by lists.linaro.org (Postfix) with ESMTPS id 8DC816216C
 for <linaro-mm-sig@lists.linaro.org>; Tue,  7 Dec 2021 12:34:29 +0000 (UTC)
Received: by mail-wr1-f42.google.com with SMTP id q3so29145318wru.5
 for <linaro-mm-sig@lists.linaro.org>; Tue, 07 Dec 2021 04:34:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=CtkJ4ZyrlGXLYLNyAbl2XqtGUnhKIK61F0cIYJH+rgs=;
 b=SxJ7tS4I1VTI2d4zhEUvqgOILQy0taj+7D7MmoHKpCS8+4okA/O+5vjLlK2c6TOAFT
 DrkAUHTWvy6B7Bl/0aBcd6nZN/KOR8x8oVXuWD0hxPbzaxymNKsZ/XdqdMq30XtfprNa
 BxAiiNfuLB3h+VeJZVNQx0M+ARNB0xuxFoCZbQYQVv9hiYpMdsAXGhC+n6WifzJdn5DY
 1XeX7iP0VawOxGPzmK4oVpoOYicJOkpBWqnvxyOoLAAOe3Zw/Mj5P+RM+w1NhRuG3nrO
 eYWmxoI+it8kor1aTUbwlUy1IMTfE4B+LkIMiZTG33qDeFLa4vqlF/5+l3Iv5zNQ64op
 FSwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CtkJ4ZyrlGXLYLNyAbl2XqtGUnhKIK61F0cIYJH+rgs=;
 b=biofyKkT/wE0hFQoSE8R/3dHvnFQFzpktY1s75m3CQ5brpCx6npG2CVyx6l5M2tapK
 96yzGsYgma/sVKCealuXHy6qciNC+GmbhPZ/dShEy7pomPs9AEinJMf0n4OXSSRxWwpJ
 K95ee1g5NF5QFczJIPfH5513SJxWSolSPBqgAcHFFsuslXDZ50HCdI/HFRFH6XtFCLOv
 0RAxxydqLmo8gRehuFX04RsZz4jNTQ5gc+dP+QgvQj2B42n5Db6uouOKk0Mog9fPJ2w4
 vohoDOuc5lY//rYzd21PK1OSo7DUjrHX4xOo2twt/WVpsAoVulIAkuIg+LPYvF1YwKiT
 qusw==
X-Gm-Message-State: AOAM532isQuZ7Ifyg1KkGhg4i9ysr2/j683w5RIuz/lPnhzhpUgtzuPz
 KHqc4UBnw6s/gkIQCCvx/rI=
X-Google-Smtp-Source: ABdhPJxRw3zErjp8Aco3pgx884gSt+EaYwT69bA1R5ukSSnQByQldt7mClxcQJ260RUMNdkZg02oyA==
X-Received: by 2002:a5d:5272:: with SMTP id l18mr50688259wrc.208.1638880468281; 
 Tue, 07 Dec 2021 04:34:28 -0800 (PST)
Received: from abel.fritz.box (p57b0bff8.dip0.t-ipconnect.de. [87.176.191.248])
 by smtp.gmail.com with ESMTPSA id f19sm2802203wmq.34.2021.12.07.04.34.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Dec 2021 04:34:27 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
Date: Tue,  7 Dec 2021 13:34:00 +0100
Message-Id: <20211207123411.167006-14-christian.koenig@amd.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211207123411.167006-1-christian.koenig@amd.com>
References: <20211207123411.167006-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 13/24] dma-buf: drop the DAG approach for
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
