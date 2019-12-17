Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id CC16812356A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 17 Dec 2019 20:09:21 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 86E846185A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 17 Dec 2019 19:09:20 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 79CC6618CF; Tue, 17 Dec 2019 19:09:20 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,
	SUBJ_OBFU_PUNCT_FEW,SUBJ_OBFU_PUNCT_MANY autolearn=disabled
	version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B69DA61885;
	Tue, 17 Dec 2019 19:08:53 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id B3B1261655
 for <linaro-mm-sig@lists.linaro.org>; Tue, 17 Dec 2019 19:08:50 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id A156961885; Tue, 17 Dec 2019 19:08:50 +0000 (UTC)
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by lists.linaro.org (Postfix) with ESMTPS id 93E9661655
 for <linaro-mm-sig@lists.linaro.org>; Tue, 17 Dec 2019 19:08:49 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id s64so6168046pgb.9
 for <linaro-mm-sig@lists.linaro.org>; Tue, 17 Dec 2019 11:08:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=M6ODtAK/kSPelKWo8qlr9AI1paG4/5fDCdQdMGc8cow=;
 b=FZ8YYEeckIGYq3o1RAm/VBLdmaSYIClgY7u1TtCUAwvXlC4jta0wgJFKAYplS1CUqM
 yI5jRhwl9oMT1bxWL1/wy8Trm5gOZprlr8KRKPehfn18a5pN+753WSfZAbDOtkQWheGW
 DTWe8Z5e1muvZQ90HQ5iDGTEVNbgR1rfQ8fqfFHeVlW/A6t1wux+00xAAyBKaNp9Rv8E
 tFBImi5saUiUPeoNTorGMO6nlNrPiiyF6bN5LbPYQLDRsRRSbthCu9xcYIyT4GL2jtfn
 vnIq7KatbYVxEHGHhnvYEmW9Q6G3xESAuSP4WYXTh6uczGxyyPbAo29yBI4pSckambwL
 N0nw==
X-Gm-Message-State: APjAAAXUX4JnO26+R1G4oEspSZ6CWbsVuJGUfIVFO31dLoXHbFtD8Aye
 gSE54faN+pY+v9qhV5S1GfIR//gY
X-Google-Smtp-Source: APXvYqwwYwEW8UujHenDnM3HGny/IvVE2Z/yHHlmaPBn+WxMZ+NHOf6z5+i7m2NFWdAv96HkaHfebA==
X-Received: by 2002:a63:f743:: with SMTP id f3mr26884769pgk.28.1576609728600; 
 Tue, 17 Dec 2019 11:08:48 -0800 (PST)
Received: from nagraj.local ([49.206.21.239])
 by smtp.gmail.com with ESMTPSA id 12sm1697085pfn.177.2019.12.17.11.08.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Dec 2019 11:08:47 -0800 (PST)
From: Sumit Semwal <sumit.semwal@linaro.org>
To: sumit.semwal@linaro.org
Date: Wed, 18 Dec 2019 00:38:22 +0530
Message-Id: <20191217190822.1969-1-sumit.semwal@linaro.org>
X-Mailer: git-send-email 2.18.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-kernel@vger.kernel.org, lmark@codeaurora.org,
 linaro-mm-sig@lists.linaro.org, john.stultz@linaro.org,
 dri-devel@lists.freedesktop.org, zhong jiang <zhongjiang@huawei.com>,
 Brian.Starkey@arm.com, linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [PATCH] dma-heap: Make the symbol
	'dma_heap_ioctl_cmds' static
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

RnJvbTogemhvbmcgamlhbmcgPHpob25namlhbmdAaHVhd2VpLmNvbT4KCkZpeCB0aGUgZm9sbG93
aW5nIHNwYXJzZSB3YXJuaW5nLgoKZHJpdmVycy9kbWEtYnVmL2RtYS1oZWFwLmM6MTA5OjE0OiB3
YXJuaW5nOiBzeW1ib2wgJ2RtYV9oZWFwX2lvY3RsX2NtZHMnCndhcyBub3QgZGVjbGFyZWQuIFNo
b3VsZCBpdCBiZSBzdGF0aWM/CgpBY2tlZC1ieTogQW5kcmV3IEYuIERhdmlzIDxhZmRAdGkuY29t
PgpBY2tlZC1ieTogSm9obiBTdHVsdHogPGpvaG4uc3R1bHR6QGxpbmFyby5vcmc+ClNpZ25lZC1v
ZmYtYnk6IHpob25nIGppYW5nIDx6aG9uZ2ppYW5nQGh1YXdlaS5jb20+ClNpZ25lZC1vZmYtYnk6
IFN1bWl0IFNlbXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+CiBbc3VtaXRzOiByZWJhc2Vk
IG92ZXIgSU9DVEwgcmVuYW1lIHBhdGNoZXNdCi0tLQogZHJpdmVycy9kbWEtYnVmL2RtYS1oZWFw
LmMgfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWhlYXAuYyBiL2RyaXZlcnMvZG1hLWJ1
Zi9kbWEtaGVhcC5jCmluZGV4IDE4ODZhZWU0NjEzMS4uYWZkMjJjOWRiZGNmIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2RtYS1idWYvZG1hLWhlYXAuYworKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWhl
YXAuYwpAQCAtMTA2LDcgKzEwNiw3IEBAIHN0YXRpYyBsb25nIGRtYV9oZWFwX2lvY3RsX2FsbG9j
YXRlKHN0cnVjdCBmaWxlICpmaWxlLCB2b2lkICpkYXRhKQogCXJldHVybiAwOwogfQogCi11bnNp
Z25lZCBpbnQgZG1hX2hlYXBfaW9jdGxfY21kc1tdID0geworc3RhdGljIHVuc2lnbmVkIGludCBk
bWFfaGVhcF9pb2N0bF9jbWRzW10gPSB7CiAJRE1BX0hFQVBfSU9DVExfQUxMT0MsCiB9OwogCi0t
IAoyLjE4LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0CkxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9y
ZwpodHRwczovL2xpc3RzLmxpbmFyby5vcmcvbWFpbG1hbi9saXN0aW5mby9saW5hcm8tbW0tc2ln
Cg==
