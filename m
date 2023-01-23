Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id EA5A8677B1B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Jan 2023 13:38:18 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id AEF5C4437A
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Jan 2023 12:38:17 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	by lists.linaro.org (Postfix) with ESMTPS id 57D514437A
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Jan 2023 12:38:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20210112 header.b=GpXuLr1s;
	spf=pass (lists.linaro.org: domain of ckoenig.leichtzumerken@gmail.com designates 209.85.221.48 as permitted sender) smtp.mailfrom=ckoenig.leichtzumerken@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-wr1-f48.google.com with SMTP id h12so6664210wrv.10
        for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Jan 2023 04:38:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=k0SDGOj6yXybPWOXI0fMP8pl7SI76y6qCgJVOq7wd3Y=;
        b=GpXuLr1s89IbQNq8YVP7+aIEkWj2M9QCXLnURqJrGDOtNn+MiDcvF6CwMsX1JRRdFu
         gFTGtAzA624j5SspxiuoxqAM4PF+iDIQUYU47W5mDccUa0mJi/T8tEP/plPESBcr9EeM
         6llyFwmbjOMjJyFzZ4yGyUA/3W7XAnW8ZcTHfMFUw+xwbDeoKqiV9G88ZOe/a3ouVY2w
         /NLmmQSy/5TqabrQ6K/qazq0IBgnOZZgX4pnRGin+9nIGubhsSQdsl1Tl6hUeE5Nrm2O
         56fEqC2T4h1ZBwlmIBAA90LU2bSoaVSgd3AgYnU77aEVJbbMZjaj3zNA2XJTNmUgPAKm
         kQIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=k0SDGOj6yXybPWOXI0fMP8pl7SI76y6qCgJVOq7wd3Y=;
        b=yZ+NGgzoZLt0nDrMf9QMOjHluVYjKoilJyeGOD2k2AOUHU7530W7MtjeThxadR6fxs
         Ixos2jLx7i532shyOImo+RTkHSJLdeWO7K5W/VK8KThcElFk06NvbtVc2/8o7QuVvJGl
         f/63zuMPyr7vTLeTrhRN6CWANp6M7Y+JwZN10T3Y3BwuTX8h9vA1V7PhOvVgoqW2hq/J
         3pkSwwdpjHR/RjDSRTNsftSEX3BCdC6pdXgbbquV4NXVMOs6uTji3dA7nH4e1oaNtvGp
         0FO+L7GEirqwvTXF62rsFk7UfEE8PlKJVWtIhrb8LJ3y5PETBsvZWXosb9oMMMhYaI/T
         81aQ==
X-Gm-Message-State: AFqh2kq+OtYJRPtRztoTJstEHbwWNtbbZaCQlPN65Yrh0ctUToPDo8vg
	jOvVFzJBHVx+e8eZdRXjnYk=
X-Google-Smtp-Source: AMrXdXuhWpkg1xDO4DN/sJG6IqAq8RqKHMaDkKgR7drCIolSUNpdc6T1YBCDkNoHWnR9meWkZB4XQw==
X-Received: by 2002:a05:6000:98f:b0:2be:296:3b5 with SMTP id by15-20020a056000098f00b002be029603b5mr23468134wrb.17.1674477480330;
        Mon, 23 Jan 2023 04:38:00 -0800 (PST)
Received: from able.fritz.box (p5b0ea2e7.dip0.t-ipconnect.de. [91.14.162.231])
        by smtp.gmail.com with ESMTPSA id k3-20020a5d6e83000000b00289bdda07b7sm4284510wrz.92.2023.01.23.04.37.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 04:37:59 -0800 (PST)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
To: l.stach@pengutronix.de,
	nicolas@ndufresne.ca,
	ppaalanen@gmail.com,
	sumit.semwal@linaro.org,
	daniel@ffwll.ch,
	robdclark@gmail.com,
	tfiga@chromium.org,
	sebastian.wick@redhat.com,
	hverkuil@xs4all.nl,
	dri-devel@lists.freedesktop.org,
	linaro-mm-sig@lists.linaro.org,
	linux-media@vger.kernel.org,
	benjamin.gaignard@collabora.com,
	lmark@codeaurora.org,
	labbott@redhat.com,
	Brian.Starkey@arm.com,
	jstultz@google.com,
	laurent.pinchart@ideasonboard.com,
	mchehab@kernel.org
Date: Mon, 23 Jan 2023 13:37:54 +0100
Message-Id: <20230123123756.401692-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 57D514437A
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.17 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	RCVD_IN_DNSWL_HI(-1.00)[91.14.162.231:received,209.85.221.48:from];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	R_MIXED_CHARSET(0.83)[subject];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20210112];
	MIME_GOOD(-0.10)[text/plain];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	NEURAL_HAM(-0.00)[-0.693];
	FREEMAIL_ENVFROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_THREE(0.00)[3];
	TO_DN_NONE(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.221.48:from];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_TO(0.00)[pengutronix.de,ndufresne.ca,gmail.com,linaro.org,ffwll.ch,chromium.org,redhat.com,xs4all.nl,lists.freedesktop.org,lists.linaro.org,vger.kernel.org,collabora.com,codeaurora.org,arm.com,google.com,ideasonboard.com,kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: D5IJDXPL25FXU52C7JDMRQ7A4HXAJONQ
X-Message-ID-Hash: D5IJDXPL25FXU52C7JDMRQ7A4HXAJONQ
X-MailFrom: ckoenig.leichtzumerken@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] DMA-heap driver hints
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/D5IJDXPL25FXU52C7JDMRQ7A4HXAJONQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi guys,

this is just an RFC! The last time we discussed the DMA-buf coherency
problem [1] we concluded that DMA-heap first needs a better way to
communicate to userspace which heap to use for a certain device.

As far as I know userspace currently just hard codes that information
which is certainly not desirable considering that we should have this
inside the kernel as well.

So what those two patches here do is to first add some
dma_heap_create_device_link() and  dma_heap_remove_device_link()
function and then demonstrating the functionality with uvcvideo
driver.

The preferred DMA-heap is represented with a symlink in sysfs between
the device and the virtual DMA-heap device node.

What's still missing is certainly matching userspace for this since I
wanted to discuss the initial kernel approach first.

Please take a look and comment.

Thanks,
Christian.

[1] https://lore.kernel.org/all/11a6f97c-e45f-f24b-8a73-48d5a388a2cc@gmail.com/T/


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
