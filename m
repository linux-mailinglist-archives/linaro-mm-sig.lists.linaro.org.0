Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 601706F55CB
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 12:17:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6B4C5402B0
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  3 May 2023 10:17:29 +0000 (UTC)
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
	by lists.linaro.org (Postfix) with ESMTPS id CCA0C3F702
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Apr 2023 00:10:43 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20221208 header.b=sFykKzA9;
	spf=pass (lists.linaro.org: domain of justinpopo6@gmail.com designates 209.85.219.53 as permitted sender) smtp.mailfrom=justinpopo6@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-qv1-f53.google.com with SMTP id e13so14184971qvd.8
        for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Apr 2023 17:10:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681863043; x=1684455043;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=VoyOtevA7zWVcY2FMaSNxcWdqWdjwOkjpS+Kg2w2jSA=;
        b=sFykKzA97PqsK5KYynP+h9AsjamexIk+Nn10QGXknsUrLemzpQYJQ87TqQT9VO71m3
         EySGCOwets/U/hy0lFm7hVA42oJtCjU5VWVYoiJDulRErN+FD4m292/qDV9e5BfNbCRM
         5VpHOIPBJ64a37DqgoJSCHE+6jPLZrxrP9967Hq/BqG8LhhaTXe8kIkTSZ1HNCJeydrg
         ElgHVXbowPSnKEEiEPE/r4sVSZ3Wgs9VglaaIz6Y39OivnoLVFe51J/cKNR6EUKikwnl
         0XqC5pDhuRrfxNAbCUQycn4gL/8rG6CJ+I7z7ulNgTVqyqh+k1aQN0I0GvOR3elKPxPV
         APRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681863043; x=1684455043;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VoyOtevA7zWVcY2FMaSNxcWdqWdjwOkjpS+Kg2w2jSA=;
        b=c58svZpn9p3bOVPULjW77zjjBw/sdKbsAa0jtTs0UrZJC8owwLySHt3ztCR1/9+QqN
         auGFpTk4nB3ZK+dHjee0hkdnK5II/WZBCL0eRA0sxyj3ylHYXezupoH4pSRPmQUq8a+T
         dWlsfuXEvq3BS9GD1nomoMNi7Kv9hjgMCqOovwl/OnEQWLzMOh8lcfzdRsjCr9gLzJ+w
         kQxK1kar6nH+up/QLHEybURvS5uxPrDQdtAWCrKIGPKRbkw/GAsBCiA3/knhpcPrCxx+
         1oVVcbTp/OmETj60mjOEPvBmqLrXonfqxrVixfhkXl5Vky8JQH1jYWSArvl1LgtK319f
         +yfw==
X-Gm-Message-State: AAQBX9d4tFCHh6Kkb7J8Ps5E8VAGY3Rfh8wuQOoFwZMj8OzopVNpvQwR
	hQUeU617P8FAFkJSGY+MZ4A=
X-Google-Smtp-Source: AKy350ZfbVnjm7WTZXlNXTdPmRjM6xggqlbBTZwnwChNwmErHuEZDhi4LipIpV3OEHwNKezANor72w==
X-Received: by 2002:a05:6214:20e2:b0:5ef:4655:192e with SMTP id 2-20020a05621420e200b005ef4655192emr22363479qvk.36.1681863043415;
        Tue, 18 Apr 2023 17:10:43 -0700 (PDT)
Received: from stbirv-lnx-2.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id d14-20020a37680e000000b0074d1b6a8187sm2639035qkc.130.2023.04.18.17.10.41
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Apr 2023 17:10:43 -0700 (PDT)
From: Justin Chen <justinpopo6@gmail.com>
To: netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	bcm-kernel-feedback-list@broadcom.com
Date: Tue, 18 Apr 2023 17:10:16 -0700
Message-Id: <1681863018-28006-5-git-send-email-justinpopo6@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1681863018-28006-1-git-send-email-justinpopo6@gmail.com>
References: <1681863018-28006-1-git-send-email-justinpopo6@gmail.com>
X-Spamd-Result: default: False [-1.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20221208];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[dt];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[23];
	NEURAL_HAM(-0.00)[-1.000];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[broadcom.com,gmail.com,davemloft.net,google.com,kernel.org,redhat.com,linaro.org,lunn.ch,armlinux.org.uk,amd.com];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.53:from];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	DKIM_TRACE(0.00)[gmail.com:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: CCA0C3F702
X-Spamd-Bar: -
X-MailFrom: justinpopo6@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 4HBU62XZDBVAWVQAYCGWHRISYYOLY25D
X-Message-ID-Hash: 4HBU62XZDBVAWVQAYCGWHRISYYOLY25D
X-Mailman-Approved-At: Wed, 03 May 2023 10:15:29 +0000
CC: justin.chen@broadcom.com, f.fainelli@gmail.com, davem@davemloft.net, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, opendmb@gmail.com, andrew@lunn.ch, hkallweit1@gmail.com, linux@armlinux.org.uk, richardcochran@gmail.com, sumit.semwal@linaro.org, christian.koenig@amd.com, Justin Chen <justinpopo6@gmail.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH net-next 4/6] net: phy: mdio-bcm-unimac: Add asp v2.0 support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4HBU62XZDBVAWVQAYCGWHRISYYOLY25D/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Add mdio compat string for ASP 2.0 ethernet driver.

Signed-off-by: Justin Chen <justinpopo6@gmail.com>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/net/mdio/mdio-bcm-unimac.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/mdio/mdio-bcm-unimac.c b/drivers/net/mdio/mdio-bcm-unimac.c
index bfc9be23c973..6b26a0803696 100644
--- a/drivers/net/mdio/mdio-bcm-unimac.c
+++ b/drivers/net/mdio/mdio-bcm-unimac.c
@@ -334,6 +334,8 @@ static SIMPLE_DEV_PM_OPS(unimac_mdio_pm_ops,
 			 unimac_mdio_suspend, unimac_mdio_resume);
 
 static const struct of_device_id unimac_mdio_ids[] = {
+	{ .compatible = "brcm,asp-v2.1-mdio", },
+	{ .compatible = "brcm,asp-v2.0-mdio", },
 	{ .compatible = "brcm,genet-mdio-v5", },
 	{ .compatible = "brcm,genet-mdio-v4", },
 	{ .compatible = "brcm,genet-mdio-v3", },
-- 
2.7.4

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
