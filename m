Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id B9E0F1CF12A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 11:09:54 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D3EEB65F7E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 12 May 2020 09:09:53 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id C517E665AA; Tue, 12 May 2020 09:09:53 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE
	autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3194E61957;
	Tue, 12 May 2020 09:01:37 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id F057765FAA
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:01:28 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id E1A1265FAB; Tue, 12 May 2020 09:01:28 +0000 (UTC)
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by lists.linaro.org (Postfix) with ESMTPS id 3A09661900
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 09:00:08 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id h17so5459308wrc.8
 for <linaro-mm-sig@lists.linaro.org>; Tue, 12 May 2020 02:00:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3/9uzJ3fevUELKKtrW0wppzXu6P75uy22NGdQSlmDz8=;
 b=PcHvEyR6UODL5s6+nzPCxFU6D4kglCus9Re1H8FA1JmIVX4gVwgbtE5BuROCgtiNWA
 Tju2ESTuwrPwbiON1l76Jm/pjT9HC0Tuvf3AM/rr3WnIAg4IepKGt4WE7iCxbTDhD3Fz
 KEKp9GZ5kBL7wl7B3IMz5spPbzAPGZKO3ElxeIttLi46PLJZWYHeeQbHK1v5Du4VeXTt
 Re8rEmRbX8NDaKWBkEV4OJDh0/BpsM4yYUlcHrhbHKYKEzNTTH8ow0CDRrLXoXPK5tCm
 J1o1aAAojKjc/Bj6uABOgZDHtZDm68xrQYa8NnXjbg6VdozIxDYYAPlrU/hfxDNfDE25
 Ibdg==
X-Gm-Message-State: AGi0Pub86mR6DfCcgn2bhg6zqA7nOSbLvZiuwoIs/4pyN+j99A+dY69c
 DEc8CSa3YmR2jARLl3dRY4L+sA==
X-Google-Smtp-Source: APiQypJNdraV8h80zz8iXZE8tE3/9vYAqexMkf4hJDDcWF5MN2cVkPdcNZnVM3rSm/bq3B4xJ2e1wQ==
X-Received: by 2002:a5d:6702:: with SMTP id o2mr17490653wru.231.1589274006358; 
 Tue, 12 May 2020 02:00:06 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id y10sm18845457wrd.95.2020.05.12.02.00.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 May 2020 02:00:05 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 12 May 2020 10:59:36 +0200
Message-Id: <20200512085944.222637-10-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200512085944.222637-1-daniel.vetter@ffwll.ch>
References: <20200512085944.222637-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Cc: linux-rdma@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>, amd-gfx@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Subject: [Linaro-mm-sig] [RFC 09/17] drm/amdgpu: use dma-fence annotations
	in cs_submit()
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

VGhpcyBpcyBhIGJpdCB0cmlja3ksIHNpbmNlIC0+bm90aWZpZXJfbG9jayBpcyBoZWxkIHdoaWxl
IGNhbGxpbmcKZG1hX2ZlbmNlX3dhaXQgd2UgbXVzdCBlbnN1cmUgdGhhdCBhbHNvIHRoZSByZWFk
IHNpZGUgKGkuZS4KZG1hX2ZlbmNlX2JlZ2luX3NpZ25hbGxpbmcpIGlzIG9uIHRoZSBzYW1lIHNp
ZGUuIElmIHdlIG1peCB0aGlzIHVwCmxvY2tkZXAgY29tcGxhaW50cywgYW5kIHRoYXQncyBhZ2Fp
biB3aHkgd2Ugd2FudCB0byBoYXZlIHRoZXNlCmFubm90YXRpb25zLgoKQSBuaWNlIHNpZGUgZWZm
ZWN0IG9mIHRoaXMgaXMgdGhhdCBiZWNhdXNlIG9mIHRoZSBmc19yZWNsYWltIHByaW1pbmcKZm9y
IGRtYV9mZW5jZV9lbmFibGUgbG9ja2RlcCBub3cgYXV0b21hdGljYWxseSBjaGVja3MgZm9yIHVz
IHRoYXQKbm90aGluZyBpbiBoZXJlIGFsbG9jYXRlcyBtZW1vcnksIHdpdGhvdXQgZXZlbiBydW5u
aW5nIGFueSB1c2VycHRyCndvcmtsb2Fkcy4KCkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5v
cmcKQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpDYzogbGludXgtcmRtYUB2Z2Vy
Lmtlcm5lbC5vcmcKQ2M6IGFtZC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4KQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51
eC5pbnRlbC5jb20+CkNjOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5j
b20+ClNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9jcy5jIHwgNSArKysrKwog
MSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9jcy5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUv
YW1kZ3B1X2NzLmMKaW5kZXggNzY1M2Y2MmIxYjJkLi42ZGIzZjNjNjI5YjAgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9jcy5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9jcy5jCkBAIC0xMjEzLDYgKzEyMTMsNyBAQCBzdGF0aWMg
aW50IGFtZGdwdV9jc19zdWJtaXQoc3RydWN0IGFtZGdwdV9jc19wYXJzZXIgKnAsCiAJc3RydWN0
IGFtZGdwdV9qb2IgKmpvYjsKIAl1aW50NjRfdCBzZXE7CiAJaW50IHI7CisJYm9vbCBmZW5jZV9j
b29raWU7CiAKIAlqb2IgPSBwLT5qb2I7CiAJcC0+am9iID0gTlVMTDsKQEAgLTEyMjcsNiArMTIy
OCw4IEBAIHN0YXRpYyBpbnQgYW1kZ3B1X2NzX3N1Ym1pdChzdHJ1Y3QgYW1kZ3B1X2NzX3BhcnNl
ciAqcCwKIAkgKi8KIAltdXRleF9sb2NrKCZwLT5hZGV2LT5ub3RpZmllcl9sb2NrKTsKIAorCWZl
bmNlX2Nvb2tpZSA9IGRtYV9mZW5jZV9iZWdpbl9zaWduYWxsaW5nKCk7CisKIAkvKiBJZiB1c2Vy
cHRyIGFyZSBpbnZhbGlkYXRlZCBhZnRlciBhbWRncHVfY3NfcGFyc2VyX2JvcygpLCByZXR1cm4K
IAkgKiAtRUFHQUlOLCBkcm1Jb2N0bCBpbiBsaWJkcm0gd2lsbCByZXN0YXJ0IHRoZSBhbWRncHVf
Y3NfaW9jdGwuCiAJICovCkBAIC0xMjY0LDEyICsxMjY3LDE0IEBAIHN0YXRpYyBpbnQgYW1kZ3B1
X2NzX3N1Ym1pdChzdHJ1Y3QgYW1kZ3B1X2NzX3BhcnNlciAqcCwKIAlhbWRncHVfdm1fbW92ZV90
b19scnVfdGFpbChwLT5hZGV2LCAmZnByaXYtPnZtKTsKIAogCXR0bV9ldV9mZW5jZV9idWZmZXJf
b2JqZWN0cygmcC0+dGlja2V0LCAmcC0+dmFsaWRhdGVkLCBwLT5mZW5jZSk7CisJZG1hX2ZlbmNl
X2VuZF9zaWduYWxsaW5nKGZlbmNlX2Nvb2tpZSk7CiAJbXV0ZXhfdW5sb2NrKCZwLT5hZGV2LT5u
b3RpZmllcl9sb2NrKTsKIAogCXJldHVybiAwOwogCiBlcnJvcl9hYm9ydDoKIAlkcm1fc2NoZWRf
am9iX2NsZWFudXAoJmpvYi0+YmFzZSk7CisJZG1hX2ZlbmNlX2VuZF9zaWduYWxsaW5nKGZlbmNl
X2Nvb2tpZSk7CiAJbXV0ZXhfdW5sb2NrKCZwLT5hZGV2LT5ub3RpZmllcl9sb2NrKTsKIAogZXJy
b3JfdW5sb2NrOgotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4vbGlzdGluZm8v
bGluYXJvLW1tLXNpZwo=
