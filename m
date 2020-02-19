Return-Path: <linaro-mm-sig-bounces@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [107.22.173.205])
	by mail.lfdr.de (Postfix) with ESMTPS id D67371644DE
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Feb 2020 14:01:44 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 06EC5619B5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Feb 2020 13:01:44 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
	id F004F619B6; Wed, 19 Feb 2020 13:01:43 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on lists.linaro.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
	SPF_HELO_NONE,SPOOFED_FREEMAIL autolearn=disabled version=3.4.2
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6D664619CC;
	Wed, 19 Feb 2020 12:59:32 +0000 (UTC)
X-Original-To: linaro-mm-sig@lists.linaro.org
Delivered-To: linaro-mm-sig@lists.linaro.org
Received: from lists.linaro.org (localhost [127.0.0.1])
 by lists.linaro.org (Postfix) with ESMTP id E4F73618D2
 for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Feb 2020 12:59:16 +0000 (UTC)
Received: by lists.linaro.org (Postfix, from userid 109)
 id D82306197A; Wed, 19 Feb 2020 12:59:16 +0000 (UTC)
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by lists.linaro.org (Postfix) with ESMTPS id 505C561932
 for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Feb 2020 12:59:14 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id t3so405542wru.7
 for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Feb 2020 04:59:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zD578hUDzEdljbEMaXnAU5Fu0S+sZLfIWKeXuI6LQ/U=;
 b=PT0v75bwCFeHhJMFcqtbS3g8K65vIn8DoHRpn/UuU7QD61WfCUMgP2DCioBWlzwfzu
 US/G5C75DUXcDocV93uFy8aQvevyq1oN6Q9y9d6E/D0wZhAkzAcfr7nEdsx6MELvfK0W
 8Mg2vTZhnzSjQSiybBgap2rdnZJw7EfqexSb/QPNvuOXFFdKqD/YMB6MYVbsEfrAqLbq
 KkBTKbXMOatgEAGSk3kTVcKXqx4VPAZnElUK6rZOYl8DkHUGsmVoJCHtoiElczob4G6g
 OUa1PtBaxQfk4t1n/cwRgghSZ0JDpBKCX1cHX3PnDYvEbsIdTv2gk92IgdDZTsVYftTf
 dEAA==
X-Gm-Message-State: APjAAAXo7zzpFbrJVh8VKAVaOetrRi8NFF0zpt/ZmxVirYTcwAiRLsOc
 N4eLeWiPa09vP4lAkqi5zqM=
X-Google-Smtp-Source: APXvYqypLPmJbIi3gsaLC5ffX9TpDeERMeGUo6cDc/a6sZnGG5ilD2XtwQpxRhLLMrNKFdRALq+9yQ==
X-Received: by 2002:a5d:6987:: with SMTP id g7mr34834591wru.422.1582117153427; 
 Wed, 19 Feb 2020 04:59:13 -0800 (PST)
Received: from abel.fritz.box ([2a02:908:1252:fb60:90ea:9d7:18a3:895e])
 by smtp.gmail.com with ESMTPSA id h2sm3079024wrt.45.2020.02.19.04.59.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 04:59:13 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 daniel@ffwll.ch
Date: Wed, 19 Feb 2020 13:59:06 +0100
Message-Id: <20200219125910.89147-3-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200219125910.89147-1-christian.koenig@amd.com>
References: <20200219125910.89147-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: [Linaro-mm-sig] [PATCH 3/7] drm/amdgpu: use allowed_domains for
	exported DMA-bufs
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

QXZvaWQgdGhhdCB3ZSBwaW5nL3BvbmcgdGhlIGJ1ZmZlcnMgd2hlbiB3ZSBzdG9wIHRvIHBpbiBE
TUEtYnVmCmV4cG9ydHMgYnkgdXNpbmcgdGhlIGFsbG93ZWQgZG9tYWlucyBmb3IgZXhwb3J0ZWQg
YnVmZmVycy4KClNpZ25lZC1vZmYtYnk6IENocmlzdGlhbiBLw7ZuaWcgPGNocmlzdGlhbi5rb2Vu
aWdAYW1kLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfY3MuYyB8
IDUgKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfY3MuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9jcy5jCmluZGV4IGE1MmEwODQxNThiMS4u
NDFiZDJkYWQ4NDJjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRn
cHVfY3MuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfY3MuYwpAQCAt
MjgsNiArMjgsNyBAQAogI2luY2x1ZGUgPGxpbnV4L2ZpbGUuaD4KICNpbmNsdWRlIDxsaW51eC9w
YWdlbWFwLmg+CiAjaW5jbHVkZSA8bGludXgvc3luY19maWxlLmg+CisjaW5jbHVkZSA8bGludXgv
ZG1hLWJ1Zi5oPgogCiAjaW5jbHVkZSA8ZHJtL2FtZGdwdV9kcm0uaD4KICNpbmNsdWRlIDxkcm0v
ZHJtX3N5bmNvYmouaD4KQEAgLTQxNSw3ICs0MTYsOSBAQCBzdGF0aWMgaW50IGFtZGdwdV9jc19i
b192YWxpZGF0ZShzdHJ1Y3QgYW1kZ3B1X2NzX3BhcnNlciAqcCwKIAkvKiBEb24ndCBtb3ZlIHRo
aXMgYnVmZmVyIGlmIHdlIGhhdmUgZGVwbGV0ZWQgb3VyIGFsbG93YW5jZQogCSAqIHRvIG1vdmUg
aXQuIERvbid0IG1vdmUgYW55dGhpbmcgaWYgdGhlIHRocmVzaG9sZCBpcyB6ZXJvLgogCSAqLwot
CWlmIChwLT5ieXRlc19tb3ZlZCA8IHAtPmJ5dGVzX21vdmVkX3RocmVzaG9sZCkgeworCWlmIChw
LT5ieXRlc19tb3ZlZCA8IHAtPmJ5dGVzX21vdmVkX3RocmVzaG9sZCAmJgorCSAgICAoIWJvLT50
Ym8uYmFzZS5kbWFfYnVmIHx8CisJICAgIGxpc3RfZW1wdHkoJmJvLT50Ym8uYmFzZS5kbWFfYnVm
LT5hdHRhY2htZW50cykpKSB7CiAJCWlmICghYW1kZ3B1X2dtY192cmFtX2Z1bGxfdmlzaWJsZSgm
YWRldi0+Z21jKSAmJgogCQkgICAgKGJvLT5mbGFncyAmIEFNREdQVV9HRU1fQ1JFQVRFX0NQVV9B
Q0NFU1NfUkVRVUlSRUQpKSB7CiAJCQkvKiBBbmQgZG9uJ3QgbW92ZSBhIENQVV9BQ0NFU1NfUkVR
VUlSRUQgQk8gdG8gbGltaXRlZAotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdApMaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKaHR0cHM6Ly9saXN0cy5saW5hcm8ub3JnL21haWxtYW4v
bGlzdGluZm8vbGluYXJvLW1tLXNpZwo=
