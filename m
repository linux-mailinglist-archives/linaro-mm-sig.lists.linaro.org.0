Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C02E85EC
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Oct 2019 11:41:29 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 18CB06195D
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 29 Oct 2019 10:41:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id 0CCFC6196E; Tue, 29 Oct 2019 10:41:28 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE,SPOOFED_FREEMAIL autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 52B966195F;
	Tue, 29 Oct 2019 10:40:59 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id 9B7146195F
 for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Oct 2019 10:40:55 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id 85C5A60ED1; Tue, 29 Oct 2019 10:40:55 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
 [209.85.221.45])
 by lists.linaro.org (Postfix) with ESMTPS id F002960ED1
 for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Oct 2019 10:40:52 +0000 (UTC)
Received: by mail-wr1-f45.google.com with SMTP id n1so5588560wra.10
 for <linaro-mm-sig@lists.linaro.org>; Tue, 29 Oct 2019 03:40:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jkDL1mtk4AzQ+y5CLhyVn2npxrNGHq369wM8ybzjVW4=;
 b=KwxdPC2vIS15iWxrPjNTM1oKOeFW6LmD8kyuW+bdgiykPLa+7g1Ywitwy0zmw1YuWL
 OlWLV46icLCzQI0u66c0q7Ff/XlJnAj2H9685vv2hYvA0e19+59ETZukUXyQMVvNsTRY
 X3L48H8i2U94Rw01AK4hbjmnQZUU9xGOPanmSweAGVl6oyY50e4KwPENJVOYjf47dJ/Q
 1AKsyQRKyF7jMQrlUOhl9UC18c3aSkMuHh3yasXhq6LHp82d9Jmklp30DCkxR4xdBLc+
 OFKbGOVTEYdlT0UM+zEfn0HS166N2a07GF99fZMCENeNpjuPU9qLFcFIyucg3zbICx/p
 pjWw==
X-Gm-Message-State: APjAAAWCUCk3ggeVXIbz5UaON9HQirGzXLbQ/lHQN5w5rvBDwarXEnfs
 UGIApebh6abGfwZONiMB8oU=
X-Google-Smtp-Source: APXvYqz5USGXW7Wb6yhaSC619zuxZ40exSexmq0GOfkI0n/uqv8LBxSolD8SLPQ4t+DYgMeAXtuxfg==
X-Received: by 2002:adf:f60a:: with SMTP id t10mr20243394wrp.35.1572345652192; 
 Tue, 29 Oct 2019 03:40:52 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:c5d9:7998:9ca6:452])
 by smtp.gmail.com with ESMTPSA id v10sm2910210wmg.48.2019.10.29.03.40.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 03:40:51 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: dri-devel@lists.freedesktop.org, sumit.semwal@linaro.org,
 linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org,
 intel-gfx@lists.freedesktop.org
Date: Tue, 29 Oct 2019 11:40:44 +0100
Message-Id: <20191029104049.9011-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] RFC: Unpinned DMA-buf handling
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

VGhlIGJhc2ljIGlkZWEgc3RheWVkIHRoZSBzYW1lIHNpbmNlIHRoZSBsYXN0IHZlcnNpb24gb2Yg
dGhvc2UgcGF0Y2hlcy4gVGhlIGV4cG9ydGVyIGNhbiBwcm92aWRlIGV4cGxpY2l0IHBpbi91bnBp
biBmdW5jdGlvbnMgYW5kIHRoZSBpbXBvcnRlciBhIG1vdmVfbm90aWZ5IGNhbGxiYWNrLiBUaGlz
IGFsbG93cyB1cyB0byBhdm9pZCBwaW5uaW5nIGJ1ZmZlcnMgd2hpbGUgaW1wb3J0ZXJzIGhhdmUg
YSBtYXBwaW5nIGZvciB0aGVtLgoKSW4gZGlmZmVyZW5jZSB0byB0aGUgbGFzdCB2ZXJzaW9uIHRo
ZSBsb2NraW5nIGNoYW5nZXMgd2VyZSBzZXBhcmF0ZWQgZnJvbSB0aGlzIHBhdGNoc2V0IGFuZCBj
b21taXR0ZWQgdG8gZHJtLW1pc2MtbmV4dC4KClRoaXMgYWxsb3dzIGRyaXZlcnMgdG8gaW1wbGVt
ZW50IHRoZSBuZXcgbG9ja2luZyBzZW1hbnRpY3Mgd2l0aG91dCB0aGUgZXh0cmEgdW5waW5uZWQg
aGFuZGxpbmcsIGJ1dCBvZiBjb3Vyc2UgdGhlIGNoYW5nZWQgbG9ja2luZyBzZW1hbnRpY3MgaXMg
c3RpbGwgYSBwcmVyZXF1aXNpdGUgdG8gdGhlIHVucGlubmVkIGhhbmRsaW5nLgoKVGhlIGxhc3Qg
dGltZSB0aGlzIHNldCB3YXMgc2VuZCBvdXQgdGhlIGRpc2N1c3Npb24gZW5kZWQgYnkgcXVlc3Rp
b25pbmcgaWYgdGhlIG1vdmVfbm90aWZ5IGNhbGxiYWNrIHdhcyByZWFsbHkgdGhlIHJpZ2h0IGFw
cHJvYWNoIG9mIG5vdGlmeWluZyB0aGUgaW1wb3J0ZXJzIHRoYXQgYSBidWZmZXIgaXMgYWJvdXQg
dG8gY2hhbmdlIGl0cyBwbGFjZW1lbnQuIEEgcG9zc2libGUgYWx0ZXJuYXRpdmUgd291bGQgYmUg
dG8gYWRkIGEgc3BlY2lhbCBjcmFmdGVkIGZlbmNlIG9iamVjdCBpbnN0ZWFkLgoKTGV0J3MgZGlz
Y3VzcyBvbiB0aGUgZGlmZmVyZW50IGFwcHJvYWNoZXMgb25jZSBtb3JlLApDaHJpc3RpYW4uCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QKTGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCmh0dHBzOi8v
bGlzdHMubGluYXJvLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbmFyby1tbS1zaWcK
