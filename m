Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C430F79A8DD
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 16:46:28 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C20AC3F52D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 14:46:27 +0000 (UTC)
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	by lists.linaro.org (Postfix) with ESMTPS id CF03543CC4
	for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Jul 2023 00:28:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=GYPcZnb4;
	spf=pass (lists.linaro.org: domain of onion0709@gmail.com designates 209.85.214.171 as permitted sender) smtp.mailfrom=onion0709@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-1b8b318c5cfso40656055ad.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 17 Jul 2023 17:28:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689640084; x=1692232084;
        h=content-disposition:mime-version:subject:to:date:from:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gsybScX3TAasEPJeiUR0GnmS4s7meRN3K9Y2WCrLayY=;
        b=GYPcZnb4RnvOvNBuxEiXWOH2d4Wdug96h8EVX+GOEAgH8Z2WuqXUnvTdvjg8INdLVK
         DBM6NmczPdhvkoEVgE66kquSab4fELL0UgX9eLK3jBDLcso9kc0kfbYSI3rTcAEJ3QUy
         SmCoO6rPHbwElTJ7wYlf3BAZrK3VhWaiMlcQYwMtHivHPgIZXc/XTyoNeDOsyH5GOnxQ
         sjCP1eAzutGHf8lN59Yz1O/JG9GRHP9SnMMYsSu1sdnwHcK+XZl2DsZ31qXrtxnuXZxz
         /t2hKkm+PnqrDgAoZ+yd+9HBftSE5GVA5rMczzXFjjGU8WsoQTDmwLcGW8AvRgsfSYfg
         j/QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689640084; x=1692232084;
        h=content-disposition:mime-version:subject:to:date:from:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gsybScX3TAasEPJeiUR0GnmS4s7meRN3K9Y2WCrLayY=;
        b=XS9cKyKA7XKWXaUyN7pypmidvuyZvF+TnlV7ouAOHoAsjOH1RIEsWKBzHo3yPYgQ5x
         zpZbP6Tm2glZ3IX/sGJ+jmnY578zjGUrykPHN2zm1hjVl2rUX9qQ2wMqfCudHHBeiPAd
         2VGiIB8qzfqCWU73aeoqaHcN+XzmJ0bF/1kfJZO7RJWQiCW21X1TnPCS1CWSAhXYZOiv
         gbGnXP2PmLiQwlNkDZaLe2xYTDHC8onnAdnRdA5Ng+N4ipZavrJrPmKzaVnyqKtmfFs/
         ccdChKoINP0drYmajI9OXaND2atE6GCSKn+P4vGT8VYsY4G/uzyGNwzkoGtdI5hXXs8V
         0tiw==
X-Gm-Message-State: ABy/qLbfnOFJYpW2d/dI1GVn0uvKZbshpljcU1ZVmSVXLNID3lbr6I4G
	V8p62pGjKYdnJG9Q2Ptbtjw=
X-Google-Smtp-Source: APBJJlGcs3hJOrf1f/Cd0vMFz6Oee0pgYh+6JNHCOG9asryiPrdQHqTUaqPDEil1JR7+YBoerQtMgg==
X-Received: by 2002:a17:902:e805:b0:1ab:11c8:777a with SMTP id u5-20020a170902e80500b001ab11c8777amr16225639plg.13.1689640083776;
        Mon, 17 Jul 2023 17:28:03 -0700 (PDT)
Received: from sie-luc. ([1.85.36.133])
        by smtp.gmail.com with ESMTPSA id n10-20020a170902e54a00b001b86e17ecacsm452089plf.131.2023.07.17.17.28.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Jul 2023 17:28:03 -0700 (PDT)
Message-ID: <64b5dc93.170a0220.243d5.1d63@mx.google.com>
X-Google-Original-Message-ID: <20230718002756.GA2558@sie-luc.>
From: Luc Ma <onion0709@gmail.com>
X-Google-Original-From: Luc Ma <luc@sietium.com>
Date: Tue, 18 Jul 2023 08:27:56 +0800
To: Sumit Semwal <sumit.semwal@linaro.org>,
	Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
	linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org,
	onion0709@gmail.com
MIME-Version: 1.0
Content-Disposition: inline
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: CF03543CC4
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	FREEMAIL_TO(0.00)[linaro.org,amd.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_TWO(0.00)[2];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.214.171:from];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.214.171:from]
X-MailFrom: onion0709@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: PME3UPY7PYGINHRLATOLTEZRMCYIEGOE
X-Message-ID-Hash: PME3UPY7PYGINHRLATOLTEZRMCYIEGOE
X-Mailman-Approved-At: Mon, 11 Sep 2023 14:44:42 +0000
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH] dma-buf: remove unintended hyphen in the sysfs path
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/PME3UPY7PYGINHRLATOLTEZRMCYIEGOE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

From: Luc Ma <luc@sietium.com>

Signed-off-by: Luc Ma <luc@sietium.com>
---
 drivers/dma-buf/dma-buf-sysfs-stats.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/dma-buf/dma-buf-sysfs-stats.c b/drivers/dma-buf/dma-buf-sysfs-stats.c
index 6cfbbf0720bd..b5b62e40ccc1 100644
--- a/drivers/dma-buf/dma-buf-sysfs-stats.c
+++ b/drivers/dma-buf/dma-buf-sysfs-stats.c
@@ -33,7 +33,7 @@
  * into their address space. This necessitated the creation of the DMA-BUF sysfs
  * statistics interface to provide per-buffer information on production systems.
  *
- * The interface at ``/sys/kernel/dma-buf/buffers`` exposes information about
+ * The interface at ``/sys/kernel/dmabuf/buffers`` exposes information about
  * every DMA-BUF when ``CONFIG_DMABUF_SYSFS_STATS`` is enabled.
  *
  * The following stats are exposed by the interface:
-- 
2.25.1

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
