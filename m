Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 153F59798E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Aug 2019 14:36:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B895A6187F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 Aug 2019 12:36:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id A920461823; Wed, 21 Aug 2019 12:36:44 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	ip-10-150-125-211.ec2.internal
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C02466183D;
	Wed, 21 Aug 2019 12:35:32 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E997960EFF
 for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Aug 2019 12:35:21 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id DE42461846; Wed, 21 Aug 2019 12:35:21 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com
 [209.85.128.46])
 by lists.linaro.org (Postfix) with ESMTPS id 47C5360EFF
 for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Aug 2019 12:31:50 +0000 (UTC)
Received: by mail-wm1-f46.google.com with SMTP id v15so1941804wml.0
 for <linaro-mm-sig@lists.linaro.org>; Wed, 21 Aug 2019 05:31:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=3S5TS4XBx1mfIFrnN6gmTUYzjNlq08rA3aAzZmGTXEQ=;
 b=n6dGkUqxngNxcHNwIhQA+J5xjNKS5cDsSLFxFuUIxVDUsWaOUbJRDaijS3kOUkr/gX
 Qd1VW8Ox8aEi7MQ6wNiDSs0YtLJKY6S3IRYhBaiJSaqjW1VzT+31YWFCmuDSaU3hJDYk
 AK3lfDzQHE0KrsOHCM+wFKZZZwE3j7u7nOX+xh0jY8XBSDnA8hLJIUgSQGEEeYXGuPTt
 J+H2GKv9OWtULKqKDWWAZ9eZ9MmUwY0FER98/4Dakz43eIMMle4UpNyRkt4Gc0aL5hWA
 ur9Pj4vhjujkp7UddmHxI/hth0gNXQ7eOtsyVsvuAfKfXX5979S8iycJXsRgujtuqzX+
 fL/w==
X-Gm-Message-State: APjAAAU1lAxSoyVyBi15g71CmbMAA2UpANMdJYu4n6TwSjBYYgYzI3ki
 0YZrykqSf3ogVogYjb/Ag4M=
X-Google-Smtp-Source: APXvYqwi9lBmQWxnD8F63h+EmsrmrZ/1OYywUasQane7UOn3NIneCxEUK9tkCqql5egIVLWNpvtq6Q==
X-Received: by 2002:a1c:1d08:: with SMTP id d8mr5751122wmd.22.1566390709459;
 Wed, 21 Aug 2019 05:31:49 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:8189:dd33:a934:c4fa])
 by smtp.gmail.com with ESMTPSA id v3sm23084571wrq.34.2019.08.21.05.31.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Aug 2019 05:31:49 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: dri-devel@lists.freedesktop.org, chris@chris-wilson.co.uk,
 daniel.vetter@ffwll.ch, sumit.semwal@linaro.org,
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
Date: Wed, 21 Aug 2019 14:31:37 +0200
Message-Id: <20190821123147.110736-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [RFC] replacing dma_resv API
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

SGkgZXZlcnlvbmUsCgpJbiBwcmV2aW91cyBkaXNjdXNzaW9uIGl0IHN1cmZhY2VkIHRoYXQgZGlm
ZmVyZW50IGRyaXZlcnMgdXNlIHRoZSBzaGFyZWQgYW5kIGV4cGxpY2l0IGZlbmNlcyBpbiB0aGUg
ZG1hX3Jlc3Ygb2JqZWN0IHdpdGggZGlmZmVyZW50IG1lYW5pbmdzLgoKVGhpcyBpcyBwcm9ibGVt
YXRpYyB3aGVuIHdlIHNoYXJlIGJ1ZmZlcnMgYmV0d2VlbiB0aG9zZSBkcml2ZXJzIGFuZCByZXF1
aXJlbWVudHMgZm9yIGltcGxpY2l0IGFuZCBleHBsaWNpdCBzeW5jaHJvbml6YXRpb24gbGVhZGVk
IHRvIHF1aXRlIGEgbnVtYmVyIG9mIHdvcmthcm91bmRzIHJlbGF0ZWQgdG8gdGhpcy4KClNvIEkg
c3RhcnRlZCBhbiBlZmZvcnQgdG8gZ2V0IGFsbCBkcml2ZXJzIGJhY2sgdG8gYSBjb21tb24gdW5k
ZXJzdGFuZGluZyBvZiB3aGF0IHRoZSBmZW5jZXMgaW4gdGhlIGRtYV9yZXN2IG9iamVjdCBtZWFu
IGFuZCBiZSBhYmxlIHRvIHVzZSB0aGUgb2JqZWN0IGZvciBkaWZmZXJlbnQga2luZCBvZiB3b3Jr
bG9hZHMgaW5kZXBlbmRlbnQgb2YgdGhlIGNsYXNzaWMgRFJNIGNvbW1hbmQgc3VibWlzc2lvbiBp
bnRlcmZhY2UuCgpUaGUgcmVzdWx0IGlzIHRoaXMgcGF0Y2ggc2V0IHdoaWNoIG1vZGlmaWVzIHRo
ZSBkbWFfcmVzdiBBUEkgdG8gZ2V0IGF3YXkgZnJvbSBhIHNpbmdsZSBleHBsaWNpdCBmZW5jZSBh
bmQgbXVsdGlwbGUgc2hhcmVkIGZlbmNlcywgdG93YXJkcyBhIG5vdGF0aW9uIHdoZXJlIHdlIGhh
dmUgZXhwbGljaXQgY2F0ZWdvcmllcyBmb3Igd3JpdGVycywgcmVhZGVycyBhbmQgb3RoZXJzLgoK
VG8gZG8gdGhpcyBJIGNhbWUgdXAgd2l0aCBhIG5ldyBjb250YWluZXIgY2FsbGVkIGRtYV9yZXN2
X2ZlbmNlcyB3aGljaCBjYW4gc3RvcmUgYm90aCBhIHNpbmdsZSBmZW5jZSBhcyB3ZWxsIGFzIG11
bHRpcGxlIGZlbmNlcyBpbiBhIGRtYV9mZW5jZV9hcnJheS4KClRoaXMgdHVybmVkIG91dCB0byBh
Y3R1YWxseSBiZSBldmVuIGJlIHF1aXRlIGEgYml0IHNpbXBsZXIsIHNpbmNlIHdlIGRvbid0IG5l
ZWQgYW55IGNvbXBsaWNhdGVkIGRhbmNlIGJldHdlZW4gUkNVIGFuZCBzZXF1ZW5jZSBjb3VudCBw
cm90ZWN0ZWQgdXBkYXRlcyBhbnkgbW9yZS4KCkluc3RlYWQgd2UgY2FuIGp1c3QgZ3JhYiBhIHJl
ZmVyZW5jZSB0byB0aGUgZG1hX2ZlbmNlX2FycmF5IHVuZGVyIFJDVSBhbmQgc28ga2VlcCB0aGUg
Y3VycmVudCBzdGF0ZSBvZiBzeW5jaHJvbml6YXRpb24gYWxpdmUgdW50aWwgd2UgYXJlIGRvbmUg
d2l0aCBpdC4KClRoaXMgcmVzdWx0cyBpbiBib3RoIGEgc21hbGwgcGVyZm9ybWFuY2UgaW1wcm92
ZW1lbnQgc2luY2Ugd2UgZG9uJ3QgbmVlZCBzbyBtYW55IGJhcnJpZXJzIGFueSBtb3JlLCBhcyB3
ZWxsIGFzIGZld2VyIGxpbmVzIG9mIGNvZGUgaW4gdGhlIGFjdHVhbCBpbXBsZW1lbnRhdGlvbi4K
ClBsZWFzZSByZXZpZXcgYW5kL29yIGNvbW1lbnQsCkNocmlzdGlhbi4gCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJv
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
