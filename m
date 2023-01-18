Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 71B8967109A
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Jan 2023 03:06:35 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6439A3F074
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 18 Jan 2023 02:06:34 +0000 (UTC)
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	by lists.linaro.org (Postfix) with ESMTPS id 41EEF3EE61
	for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Jan 2023 02:06:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b="sCdC/8rk";
	spf=pass (lists.linaro.org: domain of dmitry.baryshkov@linaro.org designates 209.85.208.51 as permitted sender) smtp.mailfrom=dmitry.baryshkov@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ed1-f51.google.com with SMTP id b4so28207758edf.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 17 Jan 2023 18:06:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SCpYgRmq69b6/9nwI4nlNw5U/U3mYH9SS4rlE1EJHiU=;
        b=sCdC/8rkCqqt/a18OV8/ciuvAtSFzsn5rvwQ6JF7c2X2ONJTikbbOfMQ3qz3SR/tGJ
         dHylXVs1VB2tIor+Y9J8cNOJkg+LIZcwrTD6LXHlH/QI/56TWMFVEzybo3ekpqaIqK2D
         SEoS8IuNBb7QiFEdDQkTJDfcgNsOP908WjbebshzbxMw29Lw+KlU+mZWR8ZaIZu8KJnS
         tB1e/y+YwKojIBFItFhp43Ef7TZnFD1ePImEabJpkbLUIMZt8M/mhXfm3fHOgZx5/J6V
         aabqwtPbWpJjZZwy+5ZDThK8+K6Aj5EEe6kWBhkgRvZoSVC2jWlXA58n4f/oQzdysSut
         Ztfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SCpYgRmq69b6/9nwI4nlNw5U/U3mYH9SS4rlE1EJHiU=;
        b=VzPjqfMfm1KUW0eNyoP+1hSYCWkiMenqVw/WZzEw0V/rArP8mqo7AiwXSQ/ytNqKOw
         prjDf1thLHnRf/UDZ4arpexWU8/UZJYr+byDXGlKXAcZqyRG/3Ao4NKcdH67K+MqSMVi
         pt1HpLUHLFD61OBTxE/J9vPAnLU5rxo6Mj4QywZ6JWL9JdG5K5DM+eUGyU7VwKqrPzfV
         Ze1mmOuaQ4MZ4AhLAN6xPKpqpDOcIfFUUnTRS8TUzTpAf1TSlG3QPOLGiyRP09Q037P5
         Vd89xV75iOfsxPIkoP3+KyC0J4RE5Su1nUCuaSI1ZMFeoH22fxDHUPMMwptsC/qBzaVa
         T0LA==
X-Gm-Message-State: AFqh2koW31a1Hx8ExFRMmJxqCrfJTYpdW8Tcx4Azu65QXKf7nkFMPXOU
	WGn56CvsPRgZw8o6olNnrjqqbhJ5
X-Google-Smtp-Source: AMrXdXtm6bVjzMJezwlqrDTZWdefkIkOq3Ckp9lzvxb0zQi9T11yRyysye65sUbvVZdrI/LV7YbkaQ==
X-Received: by 2002:a05:6402:501a:b0:47e:bdb8:9133 with SMTP id p26-20020a056402501a00b0047ebdb89133mr6465531eda.38.1674007590289;
        Tue, 17 Jan 2023 18:06:30 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id kx1-20020a170907774100b0084d368b1628sm12702694ejc.40.2023.01.17.18.06.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 18:06:29 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: robdclark@gmail.com,
	quic_abhinavk@quicinc.com,
	sean@poorly.run,
	airlied@gmail.com,
	daniel@ffwll.ch,
	sumit.semwal@linaro.org,
	christian.koenig@amd.com,
	Jiasheng Jiang <jiasheng@iscas.ac.cn>
Date: Wed, 18 Jan 2023 04:06:12 +0200
Message-Id: <167400670547.1683873.1210769890022767222.b4-ty@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20221212091117.43511-1-jiasheng@iscas.ac.cn>
References: <20221212091117.43511-1-jiasheng@iscas.ac.cn>
MIME-Version: 1.0
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_TO(0.00)[gmail.com,quicinc.com,poorly.run,ffwll.ch,linaro.org,amd.com,iscas.ac.cn];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[linaro.org:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.51:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 41EEF3EE61
X-Spamd-Bar: ---
Message-ID-Hash: GZE7U37G7KD3AJXJUG6NPLJBQ5RQWWJI
X-Message-ID-Hash: GZE7U37G7KD3AJXJUG6NPLJBQ5RQWWJI
X-MailFrom: dmitry.baryshkov@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/msm/gem: Add check for kmalloc
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GZE7U37G7KD3AJXJUG6NPLJBQ5RQWWJI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit


On Mon, 12 Dec 2022 17:11:17 +0800, Jiasheng Jiang wrote:
> Add the check for the return value of kmalloc in order to avoid
> NULL pointer dereference in copy_from_user.
> 
> 

Applied, thanks!

[1/1] drm/msm/gem: Add check for kmalloc
      https://gitlab.freedesktop.org/lumag/msm/-/commit/d839f0811a31

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
