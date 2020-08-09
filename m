Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 13358248584
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 14:58:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 316A360428
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Aug 2020 12:58:35 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 20A3865F83; Tue, 18 Aug 2020 12:58:35 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
	RCVD_IN_MSPIKE_WL,SPF_HELO_NONE autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E5E8C6670E;
	Tue, 18 Aug 2020 12:33:01 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 0F6B36188F
 for <linaro-mm-sig@lists.linaro.org>; Sun,  9 Aug 2020 06:17:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E7DF766572; Sun,  9 Aug 2020 06:17:54 +0000 (UTC)
Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com
 [209.85.218.65])
 by lists.linaro.org (Postfix) with ESMTPS id 04DF16188F
 for <linaro-mm-sig@lists.linaro.org>; Sun,  9 Aug 2020 06:17:54 +0000 (UTC)
Received: by mail-ej1-f65.google.com with SMTP id kq25so6223945ejb.3
 for <linaro-mm-sig@lists.linaro.org>; Sat, 08 Aug 2020 23:17:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=8/WAyXxEK6f4eGf236GZbQc5j4me7n0Ad/X2a4kTwOE=;
 b=aJAHmydQILHAzQjTEsICtaAl0T7XAof5qg/vYSOGhIJidMiTlOf/8Wr43Zfzdl7Bca
 zl/I+z6hIx7goaXY+sctC0kXmRZGRQZUXUV+gCNgObHp8JxzFK7WPGmaQhazav5KOcUc
 tHrtHX3gMtfMQp29BNvKjIe+e7gDAbuY+5iRXHZHPZ650h07cRmFNN51IQE4xBIjTbZv
 XEd0fJEdhC5Q5ejYBerpfPyuu+PxkpwWxWJWz/5QnMw8POwW6ukjKsHQGMAzpvcQvgan
 6e8zmjGm9+H1+/MmLwBZbXW7xi5XMdHhF8lcDSZh47pz5J6UYZn63CxxmsCpGssiN6wu
 ClPA==
X-Gm-Message-State: AOAM530uTZoIp1MZLZovY8e/RH9tkbu6O0KSCESr8D+vcCfy6k9hSmYC
 UStLqf1a7zFFBCsRqLn23z4=
X-Google-Smtp-Source: ABdhPJzAWTtG0O3pCQAx7xu92rq1VP07wg1HoGT+dX5bPPDs3LBi5kspOwUUzgtQT2hF3gwlm3mvyA==
X-Received: by 2002:a17:906:24d0:: with SMTP id
 f16mr15910842ejb.325.1596953873009; 
 Sat, 08 Aug 2020 23:17:53 -0700 (PDT)
Received: from felia.fritz.box ([2001:16b8:2d48:c300:9164:4bc4:8f8b:2b7d])
 by smtp.gmail.com with ESMTPSA id j1sm5175454edq.58.2020.08.08.23.17.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 08 Aug 2020 23:17:52 -0700 (PDT)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Sun,  9 Aug 2020 08:17:39 +0200
Message-Id: <20200809061739.16803-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-Mailman-Approved-At: Tue, 18 Aug 2020 12:32:33 +0000
Cc: linux-doc@vger.kernel.org, linux-rdma@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Jonathan Corbet <corbet@lwn.net>,
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org,
 Lukas Bulwahn <lukas.bulwahn@gmail.com>, linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH] dma-buf.rst: repair length of title
	underline
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: linaro-mm-sig-bounces@lists.linaro.org
Sender: "Linaro-mm-sig" <linaro-mm-sig-bounces@lists.linaro.org>
X-Virus-Scanned: ClamAV using ClamSMTP

V2l0aCBjb21taXQgNzJiNmVkZTczNjIzICgiZG1hLWJ1Zi5yc3Q6IERvY3VtZW50IHdoeSBpbmRl
ZmluaXRlIGZlbmNlcyBhcmUKYSBiYWQgaWRlYSIpLCBkb2N1bWVudCBnZW5lcmF0aW9uIHdhcm5z
OgoKICBEb2N1bWVudGF0aW9uL2RyaXZlci1hcGkvZG1hLWJ1Zi5yc3Q6MTgyOiBcCiAgV0FSTklO
RzogVGl0bGUgdW5kZXJsaW5lIHRvbyBzaG9ydC4KClJlcGFpciBsZW5ndGggb2YgdGl0bGUgdW5k
ZXJsaW5lIHRvIHJlbW92ZSB3YXJuaW5nLgoKRml4ZXM6IDcyYjZlZGU3MzYyMyAoImRtYS1idWYu
cnN0OiBEb2N1bWVudCB3aHkgaW5kZWZpbml0ZSBmZW5jZXMgYXJlIGEgYmFkIGlkZWEiKQpTaWdu
ZWQtb2ZmLWJ5OiBMdWthcyBCdWx3YWhuIDxsdWthcy5idWx3YWhuQGdtYWlsLmNvbT4KLS0tCkRh
bmllbCwgcGxlYXNlIHBpY2sgdGhpcyBtaW5vciBub24tdXJnZW50IGZpeCB0byB5b3VyIG5ldyBk
b2N1bWVudGF0aW9uLgoKIERvY3VtZW50YXRpb24vZHJpdmVyLWFwaS9kbWEtYnVmLnJzdCB8IDIg
Ky0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAt
LWdpdCBhL0RvY3VtZW50YXRpb24vZHJpdmVyLWFwaS9kbWEtYnVmLnJzdCBiL0RvY3VtZW50YXRp
b24vZHJpdmVyLWFwaS9kbWEtYnVmLnJzdAppbmRleCAxMDBiZmQyMjcyNjUuLjEzZWEwY2MwYTNm
YSAxMDA2NDQKLS0tIGEvRG9jdW1lbnRhdGlvbi9kcml2ZXItYXBpL2RtYS1idWYucnN0CisrKyBi
L0RvY3VtZW50YXRpb24vZHJpdmVyLWFwaS9kbWEtYnVmLnJzdApAQCAtMTc5LDcgKzE3OSw3IEBA
IERNQSBGZW5jZSB1QUJJL1N5bmMgRmlsZQogICAgOmludGVybmFsOgogCiBJbmRlZmluaXRlIERN
QSBGZW5jZXMKLX5+fn5+fn5+fn5+fn5+fn5+fn5+Cit+fn5+fn5+fn5+fn5+fn5+fn5+fn4KIAog
QXQgdmFyaW91cyB0aW1lcyAmZG1hX2ZlbmNlIHdpdGggYW4gaW5kZWZpbml0ZSB0aW1lIHVudGls
IGRtYV9mZW5jZV93YWl0KCkKIGZpbmlzaGVzIGhhdmUgYmVlbiBwcm9wb3NlZC4gRXhhbXBsZXMg
aW5jbHVkZToKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0
cy5saW5hcm8ub3JnCmh0dHBzOi8vbGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bmFyby1tbS1zaWcK
