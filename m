Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BC9562BCD9
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Nov 2022 13:02:12 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 385BB3F4D3
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 16 Nov 2022 12:02:11 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (mail-bn8nam12on2059.outbound.protection.outlook.com [40.107.237.59])
	by lists.linaro.org (Postfix) with ESMTPS id 9746B3EF90
	for <linaro-mm-sig@lists.linaro.org>; Wed, 16 Nov 2022 12:01:54 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=amd.com header.s=selector1 header.b=xPwzJuH2;
	spf=pass (lists.linaro.org: domain of Christian.Koenig@amd.com designates 40.107.237.59 as permitted sender) smtp.mailfrom=Christian.Koenig@amd.com;
	dmarc=pass (policy=quarantine) header.from=amd.com;
	arc=pass ("microsoft.com:s=arcselector9901:i=1")
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jELsg3xCHIe56oaczmpHAdQATKAAOYIuHm9XmtA2pFcNoyDtE73W0ctnPaJAsO4m04luvb6KDTPRmWNvRTPszSxq3vNilJHrsDiM3ZVRZ8eBfvyzVmAb3kgEh7125NvSWanklvjA/wJBFS0H4LkcyLVFa3V6+f5DbOCJge/LQpVCmpz0IHtXTXki1c1tt0TSD3Llos93HV/DsUkQTUd6ZtSCmgqiWU0RsvqsF9S/1BIcAbrm+SGvO3IzKrdKwoLW9m5IZ3ZLXq3H41R5bNJPEZF/8wjlfq4iyzrZQ3zqy+xypmSlPa88SY2B5V4pnOZ4H9clnr36UIPp2H5x7RdWxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D/d8Axlvm01O4d4Ich1VoQtSy0lvvX6DW68Wm8IH8vk=;
 b=eLKycjiJ1Y3tdVh8QRYGHY4Ye6yiq2Yojq0dhwFrFt1htqQLpUsPgWImDoUf1aVZky86AfSFOeAw4wg5KJJtYJzQU0UpGsjLQDk9D5nk5XajC81l2olsEi6RnH9XS2d6eFxUGNxiBIQGIn+pPLt5HMCtdRyi2DvvSwpXx+xXnip1kD3/K9r5Y5mfgwUF7fv0FOA4UR6K0uMh9pN3g6GjL6O5JSIBERKn+sAfVQ41p2Peft/zY6cYdMDiwrXYy98hYdi806OKsvmZOTB+1Bm7k4s8vmIL6pN4mdIKU0hn2NFyHt0OoFKU5xn+E3R7y4N4KOQy7h4qYaVD22a16tjnPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D/d8Axlvm01O4d4Ich1VoQtSy0lvvX6DW68Wm8IH8vk=;
 b=xPwzJuH2RdbUsu2idXgW0OCVkNqJUOWMdBonUOwTl+k3Bhwsw4WB7G5o4/EH4StBamc1nwr5PuXJ01aMaiW4WxItCeJf0s7Y3V1yhVhei2XJYOverHHbht9bzTjDf/PNA1OPGItuE7reP93a4usFvXXWw/o33mN1iCgvW3qY53A=
Received: from BN8PR12MB3587.namprd12.prod.outlook.com (2603:10b6:408:43::13)
 by DM4PR12MB6253.namprd12.prod.outlook.com (2603:10b6:8:a6::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.17; Wed, 16 Nov
 2022 12:01:51 +0000
Received: from BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::7d43:3f30:4caf:7421]) by BN8PR12MB3587.namprd12.prod.outlook.com
 ([fe80::7d43:3f30:4caf:7421%7]) with mapi id 15.20.5813.017; Wed, 16 Nov 2022
 12:01:51 +0000
Message-ID: <b715cb83-32f1-a33b-a0c2-b779011151c0@amd.com>
Date: Wed, 16 Nov 2022 13:01:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
To: Lukasz Wiecaszek <lukasz.wiecaszek@googlemail.com>,
 Gerd Hoffmann <kraxel@redhat.com>
References: <20221115200426.4801-1-lukasz.wiecaszek@gmail.com>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
In-Reply-To: <20221115200426.4801-1-lukasz.wiecaszek@gmail.com>
X-ClientProxiedBy: FR0P281CA0113.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a8::13) To BN8PR12MB3587.namprd12.prod.outlook.com
 (2603:10b6:408:43::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR12MB3587:EE_|DM4PR12MB6253:EE_
X-MS-Office365-Filtering-Correlation-Id: adcf3cf4-81f6-4d84-04a7-08dac7ca586c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	LXMS2AJFJF99ryrhkhjrCJzOGhkZqfebRkuI2ybHze7AIH8Whu1LmW+iTRYLrbyJimSp81Y3ch1uHEb+jyc5fxzvl4v6bgRorTV6Avt+WdjAgytqCsrCmmzHUYBky6KSlzgIwzTytfjRGtOJmCJ0p6alEnrDmmsKpgDzpMudKmgZGDsIHFN5O+DyzILfyevUngK+VE2m0n2zO1KMI8MRWX/xunaObAxwZs8xPDeT3TtpQLxejlC0Hf+iOwp3YgZkJnB88Z7C/NWlha1ouANp8/SiO63eqBpqto61Wmp45ETb/uvDhVM83h7hhUopvg2s5h6di1FwSQSIsbmOJUWwTVD9Obj3L8HTA9OOI/x/SWyfa9CRoc+LE08AULkD0eWpuh4qgVPv+4AkUD6ST4mssW+4t6zqWZAbZgrHjRthFan71QfdVePBClDMLpEWNvJtZYHPlLR4ZOWWTbM3BjCjUTYCc595NmWEEAL5/nIIu/emEAbFJteRAsNIARXSfQYtlZEYbgG5jfunLvTBGndfa0SUTU6cOj88qaCR9W2NfZWI471wExUnGo60aHHUrmtgY9E3o7IyzwhBsbxDeEXuS3nsDdFV0fAiObXfaolNJQR8M5QN4oOr+yhHeoIUq04K2izhEiJ1DCsPrmXhoRi9scg7eoVPue5n/W2cqYq4O7GUxnID5QDMWUeK7XH1r7ApPjX14bH2jj+Hg5F8MUI7kdK+pKs4ZZ0Lo+qA2qMB8h9gGwaF5NN6IfvA3ugnRFnQdvMtcsIaHF/795QHOxxdnsoAOv6q8EXVdoqCldxyEB4Ql4lQSuCeIrJy8HlBhLDmS9CvHhyAADQoR6hjr6aBkwqDpS63yiY1RgDG8rKcS/KQ7+IXQR7LfvZ9r02+PxzA
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN8PR12MB3587.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39860400002)(136003)(366004)(396003)(346002)(376002)(451199015)(38100700002)(5660300002)(41300700001)(31696002)(86362001)(316002)(966005)(478600001)(6486002)(8936002)(66556008)(54906003)(6666004)(66476007)(8676002)(4326008)(7416002)(66946007)(110136005)(6512007)(83380400001)(186003)(2906002)(6506007)(66574015)(2616005)(36756003)(31686004)(66899015)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?TnYrRkZFMHBONUc5Mk1SM3BUVVVJYUZjNHNoVk1RTFlUU1ViZGN3TXJadjA0?=
 =?utf-8?B?VUZ4bFJoRHFSNWFOOEJjWG10YTdhSE5ZcllYemJsOElOMjY2WkNRb3R5Ynl0?=
 =?utf-8?B?Tkh6cmN1UWVubHFnQUpyT1Z2dUlIZGVONERxMkQ4QmZsKzE5YkJlSnJXam82?=
 =?utf-8?B?QjZEVTlRL3FwSU9YMDU5bTNvNS95QUtCZVlsK001eGJ3Q1pjaHBEYThHTXRF?=
 =?utf-8?B?L2VhZWNTeEM3Wm5PRlhnaTJLeDI4K2NaeDJtS2MyL1ArRENzcGRqcDBxeEU4?=
 =?utf-8?B?b2pMU1kvWVNZVmpmeWxJYzB4R3hDd3YvUHRieThnbU5pRWF6UlpTS2tNSC9B?=
 =?utf-8?B?a1JQU0ptQUhGR0VqTTZ2ZEd6MXh6SGxVdDFVOWREZDdJTzdPZDlBYVpucktx?=
 =?utf-8?B?VE05Uk41dzU1bU0xelZZZVV2YVpNVnpnblV0VzdsMjhiT1pwbGROK3RlTWNV?=
 =?utf-8?B?S3FFUFRXUHg0M1N0L1ZmZTVHdExkWnV1UTgweVI2eEF3TFpXQ0ZNRjlDK2la?=
 =?utf-8?B?WXkyR1VCdzNmSSszc25yMUtMME1QRmtmekg3aUhBTE1SUHU4Qkx1VExtcUVv?=
 =?utf-8?B?Rm1YZzQ4WDBjMmt5bWNod2xHRzV4QXEzdTlnN1F1QTFlU1VxWnhtU0w0bWVz?=
 =?utf-8?B?eXdwemErR0xLNVpTcDcycnQzUDR4a3g3dGRrbzUyNjQweDRNd25ITTMwVHpw?=
 =?utf-8?B?SDMvMnJmNDloOHJscVlZZHp5eGZHbExURStIN2grclJDRFN3ZVJxTkFIQnhF?=
 =?utf-8?B?cTlZcFNKQ0gxNTVrUXlZeTdXTWd1TWtHdktOa2pVMlQvSm9OTWhNeS9pakxT?=
 =?utf-8?B?VWQ3dTk5elM3bEVzQUNXN215WXBSM09vWnFjOVFXd1ExQ2lPbVZOMWlwYjRS?=
 =?utf-8?B?S2pUTU9vbGdLdi9UWitTYllleXlFR25KU2dqUWxHV1ZySmVaOTN4c1JqdW94?=
 =?utf-8?B?bUhUU2I1T2VuUnlQT1RqZEtBb0dyU0ZPMkFMYUxZRGZjU0tlQnNHNmM1SGc4?=
 =?utf-8?B?V0VMYmx0eVpjTUpOS1NPRmN0eEExcDVhWHg1N2xqNnJTZUdaMVMxdCszcjdE?=
 =?utf-8?B?N1VaUkthQlNpcHJPS0lFZ2U0bENHVDdVQkZQdW5yZjlDWkhRb1F6bEhUTEdp?=
 =?utf-8?B?SWVxU2svQm0yT3YzNXNxVERTVGsrcXkwN3YwVFI4b3RzUHF4V0IxNzJqa2F3?=
 =?utf-8?B?bXR0aXJmTSsyZkx3L05tS3NFdDB4REE1R2xlYzZnZmRWZG9hNXZjNVcxVytO?=
 =?utf-8?B?Y2VBRjh4TjJpUFVHSXpGYzFpYVA5ZHFBcVIvSHYydmNueGJFUEFBV1dpSkh0?=
 =?utf-8?B?S3ZYYXVZenBYQzRZdk12TzY3TUlCR0ZzZmJCdmw0VE50Q1lpbnhITlRYejRI?=
 =?utf-8?B?amVBL0JJVDM1REU5bUtjdG5UR1pJQ3FET2RIeGRGSitzTDNQQThzOVpLQlh6?=
 =?utf-8?B?Ukl5M244V1lhTUJ6c0lGZFl3c0xwSTFFdzVTMWNjVGRMTDI4Y3pQMkdibkcx?=
 =?utf-8?B?NlplWWsvdFNHTDZ5Q0MwdElQTGVJcnRnekVmd2w2dGh5UEZFSXo3NnhYcGNO?=
 =?utf-8?B?SnBoSHdxTXY4VXljanpSTmR4Wld0UDBlYXpQNHl0dHJUY0ZvdnMvaERIN0hC?=
 =?utf-8?B?a1NWRmFMd0tzWENZZWdIakV5bjF6SWc2emF1UTRHTytkT2luVVBNRnRFb3J2?=
 =?utf-8?B?emgrSHMyY0hGK3BHOUU1SFBtUTN6VXdqeVVEY0Y2akpQenM4ZWFzaSsxdjFm?=
 =?utf-8?B?ZXlNRUNCUjVLMkJ2ZHNjOU1IdGFYVHZ1T3NFM0RROEJ5aVlodUtWYUdUcEY2?=
 =?utf-8?B?ZDdCMHNsS2p6RVlLdVBLdVpPUldqQWpXRGZvUDROYTFPdUVxNW9zck9mZVlN?=
 =?utf-8?B?UUY0YkdUWVA1ditMYnh3eTdnRGpWZVUyUENMTDcwRmh0V0QzVyt5M1ZzNE5p?=
 =?utf-8?B?SWhJWUh0Q3V0bkdWWTZTZlNUTndwK0tpRkhJQkxJSTQ0Sm5UWDNPc2dTR0Yz?=
 =?utf-8?B?akQwQ2dITitBMi94eitnVjVKWW1UMm15eXNnd25YSC9kZEJnZWdMUTNSUjNU?=
 =?utf-8?B?QytxaCtkUnBxTzR6R1V1djZxT21yTjcxdzhQZEFPSzE3V2h5T0U4ZC9YTUFY?=
 =?utf-8?B?SFZlRFlJOVp0ekh1MGxMUlhLYmlJZFhnTGVIQmZpMnVoQWR3WW9UQ2ZuV0p2?=
 =?utf-8?Q?56RoPh8CKpp5AgweytLtEKMhJxicZVHDYpki8yLPOaMn?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: adcf3cf4-81f6-4d84-04a7-08dac7ca586c
X-MS-Exchange-CrossTenant-AuthSource: BN8PR12MB3587.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Nov 2022 12:01:50.9954
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sXJE7KgMJHQkprm7BCH2y/FOMtxo7dalV+sx9Dsg99oPO5BKXnWEMeEL7V31zYK4
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB6253
X-Rspamd-Server: lists.linaro.org
X-Spamd-Bar: -----
X-Rspamd-Queue-Id: 9746B3EF90
X-Spamd-Result: default: False [-5.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_IN_DNSWL_HI(-1.00)[40.107.237.59:from,2603:10b6:408:43::13:received];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector9901:i=1];
	DMARC_POLICY_ALLOW(-0.50)[amd.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:40.107.0.0/16];
	R_DKIM_ALLOW(-0.20)[amd.com:s=selector1];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-0.997];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[collabora.com,gmail.com,intel.com,linaro.org,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	RWL_MAILSPIKE_POSSIBLE(0.00)[40.107.237.59:from];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:8075, ipnet:40.104.0.0/14, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	DKIM_TRACE(0.00)[amd.com:+];
	URIBL_BLOCKED(0.00)[mail-bn8nam12on2059.outbound.protection.outlook.com:rdns,amd.com:dkim,amd.com:email];
	FREEMAIL_TO(0.00)[googlemail.com,redhat.com];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[]
Message-ID-Hash: H4XBFFAMNHLL3YZDD33KZF5XY7ZMH47K
X-Message-ID-Hash: H4XBFFAMNHLL3YZDD33KZF5XY7ZMH47K
X-MailFrom: Christian.Koenig@amd.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Dmitry Osipenko <dmitry.osipenko@collabora.com>, Lukasz Wiecaszek <lukasz.wiecaszek@gmail.com>, kernel test robot <lkp@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3] udmabuf: add vmap and vunmap methods to udmabuf_ops
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/H4XBFFAMNHLL3YZDD33KZF5XY7ZMH47K/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
Content-Transfer-Encoding: base64

QW0gMTUuMTEuMjIgdW0gMjE6MDQgc2NocmllYiBMdWthc3ogV2llY2FzemVrOg0KPiBUaGUgcmVh
c29uIGJlaGluZCB0aGF0IHBhdGNoIGlzIGFzc29jaWF0ZWQgd2l0aCB2aWRlb2J1ZjIgc3Vic3lz
dGVtDQo+IChvciBtb3JlIGdlbnJhbGx5IHdpdGggdjRsMiBmcmFtZXdvcmspIGFuZCB1c2VyIGNy
ZWF0ZWQNCj4gZG1hIGJ1ZmZlcnMgKHVkbWFidWYpLiBJbiBzb21lIGNpcmN1bXN0YW5jZXMNCj4g
d2hlbiBkZWFsaW5nIHdpdGggVjRMMl9NRU1PUllfRE1BQlVGIGJ1ZmZlcnMgdmlkZW9idWYyIHN1
YnN5c3RlbQ0KPiB3YW50cyB0byB1c2UgZG1hX2J1Zl92bWFwKCkgbWV0aG9kIG9uIHRoZSBhdHRh
Y2hlZCBkbWEgYnVmZmVyLg0KPiBBcyB1ZG1hYnVmIGRvZXMgbm90IGhhdmUgLnZtYXAgb3BlcmF0
aW9uIGltcGxlbWVudGVkLA0KPiBzdWNoIGRtYV9idWZfdm1hcCgpIG5hdHVhbGx5IGZhaWxzLg0K
Pg0KPiB2aWRlb2J1ZjJfY29tbW9uOiBfX3ZiMl9xdWV1ZV9hbGxvYzogYWxsb2NhdGVkIDMgYnVm
ZmVycywgMSBwbGFuZShzKSBlYWNoDQo+IHZpZGVvYnVmMl9jb21tb246IF9fcHJlcGFyZV9kbWFi
dWY6IGJ1ZmZlciBmb3IgcGxhbmUgMCBjaGFuZ2VkDQo+IHZpZGVvYnVmMl9jb21tb246IF9fcHJl
cGFyZV9kbWFidWY6IGZhaWxlZCB0byBtYXAgZG1hYnVmIGZvciBwbGFuZSAwDQo+IHZpZGVvYnVm
Ml9jb21tb246IF9fYnVmX3ByZXBhcmU6IGJ1ZmZlciBwcmVwYXJhdGlvbiBmYWlsZWQ6IC0xNA0K
Pg0KPiBUaGUgcGF0Y2ggaXRzZWxmIHNlZW1zIHRvIGJlIHN0cmlnaGZvcndhcmQuDQo+IEl0IGFk
ZHMgaW1wbGVtZW50YXRpb24gb2YgLnZtYXAgYW5kIC52dW5tYXAgbWV0aG9kcw0KPiB0byAnc3Ry
dWN0IGRtYV9idWZfb3BzIHVkbWFidWZfb3BzJy4NCj4gLnZtYXAgbWV0aG9kIGl0c2VsZiB1c2Vz
IHZtX21hcF9yYW0oKSB0byBtYXAgcGFnZXMgbGluZWFybHkNCj4gaW50byB0aGUga2VybmVsIHZp
cnR1YWwgYWRkcmVzcyBzcGFjZS4NCj4gLnZ1bm1hcCByZW1vdmVzIG1hcHBpbmcgY3JlYXRlZCBl
YXJsaWVyIGJ5IC52bWFwLg0KPiBBbGwgbG9ja2luZyBhbmQgJ3ZtYXBwaW5nIGNvdW50aW5nJyBp
cyBkb25lIGluIGRtYV9idWYuYw0KPiBzbyBpdCBzZWVtcyB0byBiZSByZWR1bmRhbnQvdW5uZWNl
c3NhcnkgaW4gLnZtYXAvLnZ1bm1hcC4NCj4NCj4gU2lnbmVkLW9mZi1ieTogTHVrYXN6IFdpZWNh
c3playA8bHVrYXN6LndpZWNhc3pla0BnbWFpbC5jb20+DQoNCj4gUmVwb3J0ZWQtYnk6IGtlcm5l
bCB0ZXN0IHJvYm90IDxsa3BAaW50ZWwuY29tPg0KDQpQbGVhc2UgZHJvcCB0aGlzIGxpbmUsIHRo
ZSBrZXJuZWwgdGVzdCByb2JvdCBzaG91bGQgb25seSBiZSBtZW50aW9uZWQgaWYgDQp0aGUgb3Jp
Z2luYWwgcmVwb3J0IGNhbWUgZnJvbSBpdC4NCg0KQW5kIGtlZXAgaW4gbWluZCB0aGF0IGl0IG1p
Z2h0IGJlIG5lY2Vzc2FyeSB0byBpbXBsZW1lbnQgYmVnaW4vZW5kIGNwdSANCmFjY2VzcyBjYWxs
YmFja3MgYXMgd2VsbC4NCg0KQXBhcnQgZnJvbSB0aGF0IHRoZSBwYXRjaCBpcyBBY2tlZC1ieTog
Q2hyaXN0aWFuIEvDtm5pZyANCjxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Lg0KDQpSZWdhcmRz
LA0KQ2hyaXN0aWFuLg0KDQo+IC0tLQ0KPiB2MTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGlu
dXgtbWVkaWEvMjAyMjExMTIwMzUyLkc3V1BBU29QLWxrcEBpbnRlbC5jb20vVC8jdA0KPiB2Mjog
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtbWVkaWEvMjAyMjExMTQwNTI5NDQuR0E3MjY0
QHRoaW5rcGFkLXA3Mi9ULyN0DQo+DQo+IHYyIC0+IHYzOiBBZGRlZCAudnVubWFwIHRvICdzdHJ1
Y3QgZG1hX2J1Zl9vcHMgdWRtYWJ1Zl9vcHMnDQo+IHYxIC0+IHYyOiBQYXRjaCBwcmVwYXJlZCBh
bmQgdGVzdGVkIGFnYWluc3QgNi4xLjAtcmMyKw0KPg0KPiAgIGRyaXZlcnMvZG1hLWJ1Zi91ZG1h
YnVmLmMgfCAyOCArKysrKysrKysrKysrKysrKysrKysrKysrKysrDQo+ICAgMSBmaWxlIGNoYW5n
ZWQsIDI4IGluc2VydGlvbnMoKykNCj4NCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi91
ZG1hYnVmLmMgYi9kcml2ZXJzL2RtYS1idWYvdWRtYWJ1Zi5jDQo+IGluZGV4IDI4MzgxNmZiZDcy
Zi4uNzQwZDZlNDI2ZWU5IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2RtYS1idWYvdWRtYWJ1Zi5j
DQo+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi91ZG1hYnVmLmMNCj4gQEAgLTEzLDYgKzEzLDggQEAN
Cj4gICAjaW5jbHVkZSA8bGludXgvc2xhYi5oPg0KPiAgICNpbmNsdWRlIDxsaW51eC91ZG1hYnVm
Lmg+DQo+ICAgI2luY2x1ZGUgPGxpbnV4L2h1Z2V0bGIuaD4NCj4gKyNpbmNsdWRlIDxsaW51eC92
bWFsbG9jLmg+DQo+ICsjaW5jbHVkZSA8bGludXgvaW9zeXMtbWFwLmg+DQo+ICAgDQo+ICAgc3Rh
dGljIGludCBsaXN0X2xpbWl0ID0gMTAyNDsNCj4gICBtb2R1bGVfcGFyYW0obGlzdF9saW1pdCwg
aW50LCAwNjQ0KTsNCj4gQEAgLTYwLDYgKzYyLDMwIEBAIHN0YXRpYyBpbnQgbW1hcF91ZG1hYnVm
KHN0cnVjdCBkbWFfYnVmICpidWYsIHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hKQ0KPiAgIAly
ZXR1cm4gMDsNCj4gICB9DQo+ICAgDQo+ICtzdGF0aWMgaW50IHZtYXBfdWRtYWJ1ZihzdHJ1Y3Qg
ZG1hX2J1ZiAqYnVmLCBzdHJ1Y3QgaW9zeXNfbWFwICptYXApDQo+ICt7DQo+ICsJc3RydWN0IHVk
bWFidWYgKnVidWYgPSBidWYtPnByaXY7DQo+ICsJdm9pZCAqdmFkZHI7DQo+ICsNCj4gKwlkbWFf
cmVzdl9hc3NlcnRfaGVsZChidWYtPnJlc3YpOw0KPiArDQo+ICsJdmFkZHIgPSB2bV9tYXBfcmFt
KHVidWYtPnBhZ2VzLCB1YnVmLT5wYWdlY291bnQsIC0xKTsNCj4gKwlpZiAoIXZhZGRyKQ0KPiAr
CQlyZXR1cm4gLUVJTlZBTDsNCj4gKw0KPiArCWlvc3lzX21hcF9zZXRfdmFkZHIobWFwLCB2YWRk
cik7DQo+ICsJcmV0dXJuIDA7DQo+ICt9DQo+ICsNCj4gK3N0YXRpYyB2b2lkIHZ1bm1hcF91ZG1h
YnVmKHN0cnVjdCBkbWFfYnVmICpidWYsIHN0cnVjdCBpb3N5c19tYXAgKm1hcCkNCj4gK3sNCj4g
KwlzdHJ1Y3QgdWRtYWJ1ZiAqdWJ1ZiA9IGJ1Zi0+cHJpdjsNCj4gKw0KPiArCWRtYV9yZXN2X2Fz
c2VydF9oZWxkKGJ1Zi0+cmVzdik7DQo+ICsNCj4gKwl2bV91bm1hcF9yYW0obWFwLT52YWRkciwg
dWJ1Zi0+cGFnZWNvdW50KTsNCj4gK30NCj4gKw0KPiAgIHN0YXRpYyBzdHJ1Y3Qgc2dfdGFibGUg
KmdldF9zZ190YWJsZShzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBkbWFfYnVmICpidWYsDQo+
ICAgCQkJCSAgICAgZW51bSBkbWFfZGF0YV9kaXJlY3Rpb24gZGlyZWN0aW9uKQ0KPiAgIHsNCj4g
QEAgLTE2Miw2ICsxODgsOCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRtYV9idWZfb3BzIHVkbWFi
dWZfb3BzID0gew0KPiAgIAkudW5tYXBfZG1hX2J1ZgkgICA9IHVubWFwX3VkbWFidWYsDQo+ICAg
CS5yZWxlYXNlCSAgID0gcmVsZWFzZV91ZG1hYnVmLA0KPiAgIAkubW1hcAkJICAgPSBtbWFwX3Vk
bWFidWYsDQo+ICsJLnZtYXAJCSAgID0gdm1hcF91ZG1hYnVmLA0KPiArCS52dW5tYXAJCSAgID0g
dnVubWFwX3VkbWFidWYsDQo+ICAgCS5iZWdpbl9jcHVfYWNjZXNzICA9IGJlZ2luX2NwdV91ZG1h
YnVmLA0KPiAgIAkuZW5kX2NwdV9hY2Nlc3MgICAgPSBlbmRfY3B1X3VkbWFidWYsDQo+ICAgfTsN
Cg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5s
aW5hcm8ub3JnCg==
